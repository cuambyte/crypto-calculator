import '../models/exchange_rate_response_model.dart';

abstract class ExchangeRateRemoteDataSource {
  Future<ExchangeRateResponseModel> getExchangeRate({
    required String cryptoCurrencyId,
    required String fiatCurrencyId,
    required String amount,
    required String amountCurrencyId,
    required int type,
  });
}
