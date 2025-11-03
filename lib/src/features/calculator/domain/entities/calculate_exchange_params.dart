import 'currency.dart';

final class CalculateExchangeParams {
  final Currency fromCurrency;
  final Currency toCurrency;
  final double amount;

  const CalculateExchangeParams({
    required this.fromCurrency,
    required this.toCurrency,
    required this.amount,
  });
}
