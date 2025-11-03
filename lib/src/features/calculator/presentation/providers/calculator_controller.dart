import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/constants/string_constants.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/calculate_exchange_params.dart';
import '../../domain/entities/currency.dart';
import '../../domain/entities/exchange_calculation_result.dart';
import '../../domain/usecases/validate_exchange_amount_usecase.dart';
import '../states/calculator_state.dart';
import 'providers.dart';

part 'calculator_controller.g.dart';

@riverpod
final class CalculatorController extends _$CalculatorController {
  final ValidateExchangeAmountUseCase _validateAmountUseCase =
      const ValidateExchangeAmountUseCase();

  @override
  CalculatorState build() {
    final AsyncValue<List<Currency>> currenciesAsync = ref.watch(
      availableCurrenciesProvider,
    );

    return currenciesAsync.when(
      data: (currencies) {
        final Currency usdt = currencies.firstWhere(
          (c) => c.id == 'TATUM-TRON-USDT',
        );
        final Currency ves = currencies.firstWhere((c) => c.id == 'VES');

        return CalculatorState(fromCurrency: usdt, toCurrency: ves);
      },
      loading: () => const CalculatorState(),
      error: (error, stack) => const CalculatorState(),
    );
  }

  void setFromCurrency({required Currency currency}) {
    state = _updateCurrency(
      currency: currency,
      isFrom: true,
      currentFrom: state.fromCurrency,
      currentTo: state.toCurrency,
    );
  }

  void setToCurrency({required Currency currency}) {
    state = _updateCurrency(
      currency: currency,
      isFrom: false,
      currentFrom: state.fromCurrency,
      currentTo: state.toCurrency,
    );
  }

  void setAmount({required double amount}) {
    state = state.copyWith(
      amount: amount,
      errorMessage: null,
      inputFieldError: null,
    );
  }

  void swapCurrencies() {
    if (!state.canSwap) return;

    state = state.copyWith(
      fromCurrency: state.toCurrency,
      toCurrency: state.fromCurrency,
      convertedAmount: null,
      estimatedRate: null,
      errorMessage: null,
      inputFieldError: null,
    );
  }

  Future<void> calculateExchange() async {
    if (!state.canCalculate) return;

    final AmountValidationResult validationResult = _validateAmountUseCase(
      state.amount,
    );

    if (validationResult is AmountValidationFailure) {
      _handleValidationError(validationResult.errorMessage);
      return;
    }

    state = state.copyWith(
      isLoading: true,
      errorMessage: null,
      inputFieldError: null,
    );

    try {
      final result = await _performCalculation();
      _handleCalculationSuccess(result);
    } on Failure catch (failure) {
      _handleCalculationError(failure.message);
    } catch (e) {
      _handleCalculationError(StringConstants.errorMessage);
    }
  }

  CalculatorState _updateCurrency({
    required Currency currency,
    required bool isFrom,
    required Currency? currentFrom,
    required Currency? currentTo,
  }) {
    final otherCurrency = isFrom ? currentTo : currentFrom;

    if (otherCurrency != null && currency.type == otherCurrency.type) {
      return state.copyWith(
        fromCurrency: isFrom ? currency : otherCurrency,
        toCurrency: isFrom ? otherCurrency : currency,
        errorMessage: null,
        convertedAmount: null,
        estimatedRate: null,
        inputFieldError: null,
      );
    }

    return state.copyWith(
      fromCurrency: isFrom ? currency : currentFrom,
      toCurrency: isFrom ? currentTo : currency,
      errorMessage: null,
      convertedAmount: null,
      estimatedRate: null,
      inputFieldError: null,
    );
  }

  /// Realiza el cálculo de intercambio
  Future<ExchangeCalculationResult> _performCalculation() async {
    final calculateUseCase = ref.read(calculateCryptoExchangeUseCaseProvider);

    final params = CalculateExchangeParams(
      fromCurrency: state.fromCurrency!,
      toCurrency: state.toCurrency!,
      amount: state.amount,
    );

    return await calculateUseCase(params: params);
  }

  /// Maneja el resultado exitoso del cálculo
  void _handleCalculationSuccess(ExchangeCalculationResult result) {
    state = state.copyWith(
      isLoading: false,
      convertedAmount: result.convertedAmount,
      estimatedRate: result.exchangeRate,
    );
  }

  /// Maneja errores de validación
  void _handleValidationError(String errorMessage) {
    state = state.copyWith(inputFieldError: errorMessage);
  }

  /// Maneja errores durante el cálculo
  void _handleCalculationError(String errorMessage) {
    state = state.copyWith(
      isLoading: false,
      errorMessage: errorMessage,
      inputFieldError: errorMessage,
    );
  }
}
