import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../core/network/dio_client.dart';
import '../../data/datasources/currency_local_datasource.dart';
import '../../data/datasources/currency_local_datasource_impl.dart';
import '../../data/datasources/exchange_rate_remote_datasource_impl.dart';
import '../../data/repositories/calculator_repository_impl.dart';
import '../../data/repositories/currency_repository_impl.dart';
import '../../domain/entities/currency.dart';
import '../../domain/repositories/calculator_repository.dart';
import '../../domain/repositories/currency_repository.dart';
import '../../domain/usecases/calculate_crypto_exchange_usecase.dart';
import '../../domain/usecases/get_available_currencies_usecase.dart';

part 'providers.g.dart';

@riverpod
Dio dio(Ref ref) => DioClient.instance;

@riverpod
ExchangeRateRemoteDataSourceImpl exchangeRateRemoteDataSource(Ref ref) =>
    ExchangeRateRemoteDataSourceImpl(dio: ref.read(dioProvider));

@riverpod
CalculatorRepository calculatorRepository(Ref ref) => CalculatorRepositoryImpl(
  exchangeRateRemoteDataSource: ref.read(exchangeRateRemoteDataSourceProvider),
);

@riverpod
CalculateCryptoExchangeUseCase calculateCryptoExchangeUseCase(Ref ref) =>
    CalculateCryptoExchangeUseCase(
      repository: ref.read(calculatorRepositoryProvider),
    );

@riverpod
CurrencyLocalDataSource currencyLocalDataSource(Ref ref) =>
    const CurrencyLocalDataSourceImpl();

@riverpod
CurrencyRepository currencyRepository(Ref ref) => CurrencyRepositoryImpl(
  localDataSource: ref.read(currencyLocalDataSourceProvider),
);

@riverpod
GetAvailableCurrenciesUseCase getAvailableCurrenciesUseCase(Ref ref) =>
    GetAvailableCurrenciesUseCase(
      repository: ref.read(currencyRepositoryProvider),
    );

@riverpod
Future<List<Currency>> availableCurrencies(Ref ref) async {
  final GetAvailableCurrenciesUseCase useCase = ref.read(
    getAvailableCurrenciesUseCaseProvider,
  );
  return await useCase();
}

@riverpod
Currency defaultCryptoCurrency(Ref ref) {
  final List<Currency> currencies = ref
      .watch(availableCurrenciesProvider)
      .requireValue;
  return currencies.firstWhere((c) => c.id == 'TATUM-TRON-USDT');
}

@riverpod
Currency defaultFiatCurrency(Ref ref) {
  final List<Currency> currencies = ref
      .watch(availableCurrenciesProvider)
      .requireValue;
  return currencies.firstWhere((c) => c.id == 'VES');
}
