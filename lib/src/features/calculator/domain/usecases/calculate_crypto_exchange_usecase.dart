import '../../../../core/constants/string_constants.dart';
import '../../domain/entities/enum/currency_type.dart';
import '../entities/calculate_exchange_params.dart';
import '../entities/exchange_calculation_result.dart';
import '../repositories/calculator_repository.dart';

/// Use Case: Calcular el cambio entre criptomonedas y monedas fiat
final class CalculateCryptoExchangeUseCase {
  final CalculatorRepository _repository;

  const CalculateCryptoExchangeUseCase({
    required CalculatorRepository repository,
  }) : _repository = repository;

  Future<ExchangeCalculationResult> call({
    required CalculateExchangeParams params,
  }) async {
    if (params.amount <= 0) {
      throw ArgumentError(StringConstants.amountMustBePositiveError);
    }

    final bool isCryptoToFiat =
        params.fromCurrency.type == CurrencyType.crypto &&
        params.toCurrency.type == CurrencyType.fiat;

    final int exchangeType = isCryptoToFiat ? 0 : 1;

    final String cryptoCurrencyId =
        params.fromCurrency.type == CurrencyType.crypto
        ? params.fromCurrency.id
        : params.toCurrency.id;

    final String fiatCurrencyId = params.fromCurrency.type == CurrencyType.fiat
        ? params.fromCurrency.id
        : params.toCurrency.id;

    final double exchangeRate = await _repository.getExchangeRate(
      cryptoCurrencyId: cryptoCurrencyId,
      fiatCurrencyId: fiatCurrencyId,
      amount: params.amount.toString(),
      amountCurrencyId: params.fromCurrency.id,
      type: exchangeType,
    );

    final convertedAmount = isCryptoToFiat
        ? params.amount * exchangeRate
        : params.amount / exchangeRate;

    return ExchangeCalculationResult(
      convertedAmount: convertedAmount,
      exchangeRate: exchangeRate,
    );
  }
}
