import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/string_constants.dart';
import '../../../../core/ui/painters/background_painter.dart';
import '../../../../core/widgets/loading_button.dart';
import '../../domain/entities/currency.dart';
import '../../domain/entities/enum/currency_type.dart';
import '../providers/calculator_controller.dart';
import '../providers/currency_bottom_sheet_controller.dart';
import '../states/calculator_state.dart';
import '../widgets/amount_input_field.dart';
import '../widgets/currency_bottom_sheet.dart';
import '../widgets/currency_exchange_bar.dart';
import '../widgets/exchange_info_card.dart';

final class CalculatorScreen extends ConsumerWidget {
  const CalculatorScreen({super.key});

  Future<void> _showCurrencyBottomSheet({
    required BuildContext context,
    required WidgetRef ref,
    required Currency? currency,
    required void Function(Currency) onCurrencySelected,
    required bool isFromSelector,
  }) async {
    if (isFromSelector) {
      ref.read(currencyBottomSheetControllerProvider.notifier).openFrom();
    } else {
      ref.read(currencyBottomSheetControllerProvider.notifier).openTo();
    }

    final CurrencyType currencyType = currency?.type ?? CurrencyType.crypto;

    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => CurrencyBottomSheet(
        selectedCurrency: currency,
        onCurrencySelected: onCurrencySelected,
        currencyType: currencyType,
      ),
    ).whenComplete(
      () => ref.read(currencyBottomSheetControllerProvider.notifier).close(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final CalculatorState state = ref.watch(calculatorControllerProvider);
    final CalculatorController controller = ref.read(
      calculatorControllerProvider.notifier,
    );

    return Scaffold(
      body: SafeArea(
        child: CustomPaint(
          painter: BackgroundPainter(),
          child: Center(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Card(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 38.0,
                    ),
                    child: Column(
                      spacing: 16.0,
                      children: [
                        CurrencyExchangeBar(
                          fromCurrency: state.fromCurrency,
                          toCurrency: state.toCurrency,
                          onFromTap: () => _showCurrencyBottomSheet(
                            context: context,
                            ref: ref,
                            currency: state.fromCurrency,
                            onCurrencySelected: (currency) =>
                                controller.setFromCurrency(currency: currency),
                            isFromSelector: true,
                          ),
                          onSwap: controller.swapCurrencies,
                          onToTap: () => _showCurrencyBottomSheet(
                            context: context,
                            ref: ref,
                            currency: state.toCurrency,
                            onCurrencySelected: (currency) =>
                                controller.setToCurrency(currency: currency),
                            isFromSelector: false,
                          ),
                          canSwap: state.canSwap,
                        ),
                        const AmountInputField(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: ExchangeInfoCard(
                            estimatedRate: state.estimatedRate,
                            convertedAmount: state.convertedAmount,
                            fromCurrency: state.fromCurrency,
                            toCurrency: state.toCurrency,
                            isLoading: state.isLoading,
                          ),
                        ),
                        LoadingButton(
                          text: StringConstants.exchangeButtonText,
                          onPressed: controller.calculateExchange,
                          isLoading: state.isLoading,
                          isEnabled: state.canCalculate,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
