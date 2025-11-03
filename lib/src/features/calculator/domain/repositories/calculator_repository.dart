abstract class CalculatorRepository {
  Future<double> getExchangeRate({
    required String cryptoCurrencyId,
    required String fiatCurrencyId,
    required String amount,
    required String amountCurrencyId,
    required int type,
  });
}
