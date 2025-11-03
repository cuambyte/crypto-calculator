class ApiConstants {
  static const String baseUrl =
      'https://74j6q7lg6a.execute-api.eu-west-1.amazonaws.com/stage';
  static const String exchangeRateUrl =
      '$baseUrl/orderbook/public/recommendations';

  // Query parameters
  static const String typeParam = 'type';
  static const String cryptoCurrencyIdParam = 'cryptoCurrencyId';
  static const String fiatCurrencyIdParam = 'fiatCurrencyId';
  static const String amountParam = 'amount';
  static const String amountCurrencyIdParam = 'amountCurrencyId';

  // Exchange types
  static const int cryptoToFiat = 0;
  static const int fiatToCrypto = 1;

  // Timeouts
  static const Duration connectTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
}
