import '../../../domain/entities/exchange_rate.dart';
import '../exchange_rate_response_model.dart';

extension ExchangeRateResponseMapper on ExchangeRateResponseModel {
  ExchangeRate toEntity() => ExchangeRate(
    fiatToCryptoExchangeRate: data.byPrice.fiatToCryptoExchangeRate ?? 0.0,
  );
}
