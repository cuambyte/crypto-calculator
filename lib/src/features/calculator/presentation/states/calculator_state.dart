import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/currency.dart';

part 'calculator_state.freezed.dart';

@freezed
abstract class CalculatorState with _$CalculatorState {
  const factory CalculatorState({
    Currency? fromCurrency,
    Currency? toCurrency,
    @Default(0.0) double amount,
    double? convertedAmount,
    double? estimatedRate,
    @Default(false) bool isLoading,
    String? errorMessage,
    String? inputFieldError,
  }) = _CalculatorState;

  const CalculatorState._();

  bool get canCalculate =>
      fromCurrency != null && toCurrency != null && amount > 0;

  bool get canSwap => fromCurrency != null && toCurrency != null;
}
