// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(dio)
const dioProvider = DioProvider._();

final class DioProvider extends $FunctionalProvider<Dio, Dio, Dio>
    with $Provider<Dio> {
  const DioProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'dioProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$dioHash();

  @$internal
  @override
  $ProviderElement<Dio> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Dio create(Ref ref) {
    return dio(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Dio value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Dio>(value),
    );
  }
}

String _$dioHash() => r'fb5e1293a1d2f2aca782a019e4e71351db0ad1ab';

@ProviderFor(exchangeRateRemoteDataSource)
const exchangeRateRemoteDataSourceProvider =
    ExchangeRateRemoteDataSourceProvider._();

final class ExchangeRateRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          ExchangeRateRemoteDataSourceImpl,
          ExchangeRateRemoteDataSourceImpl,
          ExchangeRateRemoteDataSourceImpl
        >
    with $Provider<ExchangeRateRemoteDataSourceImpl> {
  const ExchangeRateRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'exchangeRateRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$exchangeRateRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<ExchangeRateRemoteDataSourceImpl> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ExchangeRateRemoteDataSourceImpl create(Ref ref) {
    return exchangeRateRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ExchangeRateRemoteDataSourceImpl value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ExchangeRateRemoteDataSourceImpl>(
        value,
      ),
    );
  }
}

String _$exchangeRateRemoteDataSourceHash() =>
    r'2114e183cc38b2c7cfc6d3630762182ee1cf602a';

@ProviderFor(calculatorRepository)
const calculatorRepositoryProvider = CalculatorRepositoryProvider._();

final class CalculatorRepositoryProvider
    extends
        $FunctionalProvider<
          CalculatorRepository,
          CalculatorRepository,
          CalculatorRepository
        >
    with $Provider<CalculatorRepository> {
  const CalculatorRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'calculatorRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$calculatorRepositoryHash();

  @$internal
  @override
  $ProviderElement<CalculatorRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CalculatorRepository create(Ref ref) {
    return calculatorRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CalculatorRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CalculatorRepository>(value),
    );
  }
}

String _$calculatorRepositoryHash() =>
    r'a932b0a7f40e74725b8923d93afab78ab7dc30c4';

@ProviderFor(calculateCryptoExchangeUseCase)
const calculateCryptoExchangeUseCaseProvider =
    CalculateCryptoExchangeUseCaseProvider._();

final class CalculateCryptoExchangeUseCaseProvider
    extends
        $FunctionalProvider<
          CalculateCryptoExchangeUseCase,
          CalculateCryptoExchangeUseCase,
          CalculateCryptoExchangeUseCase
        >
    with $Provider<CalculateCryptoExchangeUseCase> {
  const CalculateCryptoExchangeUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'calculateCryptoExchangeUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$calculateCryptoExchangeUseCaseHash();

  @$internal
  @override
  $ProviderElement<CalculateCryptoExchangeUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CalculateCryptoExchangeUseCase create(Ref ref) {
    return calculateCryptoExchangeUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CalculateCryptoExchangeUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CalculateCryptoExchangeUseCase>(
        value,
      ),
    );
  }
}

String _$calculateCryptoExchangeUseCaseHash() =>
    r'cdc2a18aa9672dbd95dcac9016fd358f283eac2f';

@ProviderFor(currencyLocalDataSource)
const currencyLocalDataSourceProvider = CurrencyLocalDataSourceProvider._();

final class CurrencyLocalDataSourceProvider
    extends
        $FunctionalProvider<
          CurrencyLocalDataSource,
          CurrencyLocalDataSource,
          CurrencyLocalDataSource
        >
    with $Provider<CurrencyLocalDataSource> {
  const CurrencyLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currencyLocalDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currencyLocalDataSourceHash();

  @$internal
  @override
  $ProviderElement<CurrencyLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CurrencyLocalDataSource create(Ref ref) {
    return currencyLocalDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CurrencyLocalDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CurrencyLocalDataSource>(value),
    );
  }
}

String _$currencyLocalDataSourceHash() =>
    r'207f1c539760104831a3c0041fa0de576fc3fd45';

@ProviderFor(currencyRepository)
const currencyRepositoryProvider = CurrencyRepositoryProvider._();

final class CurrencyRepositoryProvider
    extends
        $FunctionalProvider<
          CurrencyRepository,
          CurrencyRepository,
          CurrencyRepository
        >
    with $Provider<CurrencyRepository> {
  const CurrencyRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currencyRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currencyRepositoryHash();

  @$internal
  @override
  $ProviderElement<CurrencyRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CurrencyRepository create(Ref ref) {
    return currencyRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CurrencyRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CurrencyRepository>(value),
    );
  }
}

String _$currencyRepositoryHash() =>
    r'b7519b9d2ae591a658bc1e3cc81aaed7cd5f7018';

@ProviderFor(getAvailableCurrenciesUseCase)
const getAvailableCurrenciesUseCaseProvider =
    GetAvailableCurrenciesUseCaseProvider._();

final class GetAvailableCurrenciesUseCaseProvider
    extends
        $FunctionalProvider<
          GetAvailableCurrenciesUseCase,
          GetAvailableCurrenciesUseCase,
          GetAvailableCurrenciesUseCase
        >
    with $Provider<GetAvailableCurrenciesUseCase> {
  const GetAvailableCurrenciesUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAvailableCurrenciesUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAvailableCurrenciesUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetAvailableCurrenciesUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAvailableCurrenciesUseCase create(Ref ref) {
    return getAvailableCurrenciesUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAvailableCurrenciesUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAvailableCurrenciesUseCase>(
        value,
      ),
    );
  }
}

String _$getAvailableCurrenciesUseCaseHash() =>
    r'3b46da41f0bd50241de23340966fa4fb2fec4d96';

@ProviderFor(availableCurrencies)
const availableCurrenciesProvider = AvailableCurrenciesProvider._();

final class AvailableCurrenciesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Currency>>,
          List<Currency>,
          FutureOr<List<Currency>>
        >
    with $FutureModifier<List<Currency>>, $FutureProvider<List<Currency>> {
  const AvailableCurrenciesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'availableCurrenciesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$availableCurrenciesHash();

  @$internal
  @override
  $FutureProviderElement<List<Currency>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Currency>> create(Ref ref) {
    return availableCurrencies(ref);
  }
}

String _$availableCurrenciesHash() =>
    r'6d817799ed5ee10a628d91afda08892fd59236f0';

@ProviderFor(defaultCryptoCurrency)
const defaultCryptoCurrencyProvider = DefaultCryptoCurrencyProvider._();

final class DefaultCryptoCurrencyProvider
    extends $FunctionalProvider<Currency, Currency, Currency>
    with $Provider<Currency> {
  const DefaultCryptoCurrencyProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'defaultCryptoCurrencyProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$defaultCryptoCurrencyHash();

  @$internal
  @override
  $ProviderElement<Currency> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Currency create(Ref ref) {
    return defaultCryptoCurrency(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Currency value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Currency>(value),
    );
  }
}

String _$defaultCryptoCurrencyHash() =>
    r'21e5361c97090785ce917a99620ec6d740e0e1f1';

@ProviderFor(defaultFiatCurrency)
const defaultFiatCurrencyProvider = DefaultFiatCurrencyProvider._();

final class DefaultFiatCurrencyProvider
    extends $FunctionalProvider<Currency, Currency, Currency>
    with $Provider<Currency> {
  const DefaultFiatCurrencyProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'defaultFiatCurrencyProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$defaultFiatCurrencyHash();

  @$internal
  @override
  $ProviderElement<Currency> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  Currency create(Ref ref) {
    return defaultFiatCurrency(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Currency value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Currency>(value),
    );
  }
}

String _$defaultFiatCurrencyHash() =>
    r'6e94296a9a4d3150e03b9c92b68c4ba7001da280';
