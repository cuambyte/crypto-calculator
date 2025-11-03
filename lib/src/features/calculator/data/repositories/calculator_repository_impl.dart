import 'package:crypto_calculator/src/features/calculator/data/models/mappers/exchange_rate_response_mapper.dart';

import '../../domain/entities/exchange_rate.dart';
import '../../domain/repositories/calculator_repository.dart';
import '../datasources/exchange_rate_remote_datasource.dart';
import '../models/exchange_rate_response_model.dart';

final class CalculatorRepositoryImpl implements CalculatorRepository {
  final ExchangeRateRemoteDataSource _exchangeRateRemoteDataSource;

  const CalculatorRepositoryImpl({
    required ExchangeRateRemoteDataSource exchangeRateRemoteDataSource,
  }) : _exchangeRateRemoteDataSource = exchangeRateRemoteDataSource;

  @override
  Future<double> getExchangeRate({
    required String cryptoCurrencyId,
    required String fiatCurrencyId,
    required String amount,
    required String amountCurrencyId,
    required int type,
  }) async {
    final ExchangeRate exchangeRate;

    final ExchangeRateResponseModel exchangeRateResult =
        await _exchangeRateRemoteDataSource.getExchangeRate(
          cryptoCurrencyId: cryptoCurrencyId,
          fiatCurrencyId: fiatCurrencyId,
          amount: amount,
          amountCurrencyId: amountCurrencyId,
          type: type,
        );

    exchangeRate = exchangeRateResult.toEntity();

    return exchangeRate.fiatToCryptoExchangeRate;
  }
}
