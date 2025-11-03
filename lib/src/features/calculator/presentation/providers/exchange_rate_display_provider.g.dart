// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'exchange_rate_display_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider que calcula la tasa de visualización según el tipo de conversión
///
/// Invierte la tasa cuando es una conversión de fiat a crypto para
/// mostrar siempre la tasa desde la perspectiva de la moneda origen.

@ProviderFor(exchangeRateDisplay)
const exchangeRateDisplayProvider = ExchangeRateDisplayFamily._();

/// Provider que calcula la tasa de visualización según el tipo de conversión
///
/// Invierte la tasa cuando es una conversión de fiat a crypto para
/// mostrar siempre la tasa desde la perspectiva de la moneda origen.

final class ExchangeRateDisplayProvider
    extends $FunctionalProvider<double?, double?, double?>
    with $Provider<double?> {
  /// Provider que calcula la tasa de visualización según el tipo de conversión
  ///
  /// Invierte la tasa cuando es una conversión de fiat a crypto para
  /// mostrar siempre la tasa desde la perspectiva de la moneda origen.
  const ExchangeRateDisplayProvider._({
    required ExchangeRateDisplayFamily super.from,
    required ({
      double? estimatedRate,
      Currency? fromCurrency,
      Currency? toCurrency,
    })
    super.argument,
  }) : super(
         retry: null,
         name: r'exchangeRateDisplayProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$exchangeRateDisplayHash();

  @override
  String toString() {
    return r'exchangeRateDisplayProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $ProviderElement<double?> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  double? create(Ref ref) {
    final argument =
        this.argument
            as ({
              double? estimatedRate,
              Currency? fromCurrency,
              Currency? toCurrency,
            });
    return exchangeRateDisplay(
      ref,
      estimatedRate: argument.estimatedRate,
      fromCurrency: argument.fromCurrency,
      toCurrency: argument.toCurrency,
    );
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(double? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<double?>(value),
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ExchangeRateDisplayProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$exchangeRateDisplayHash() =>
    r'587162ddb28600a3dfe663100f90a392bec08696';

/// Provider que calcula la tasa de visualización según el tipo de conversión
///
/// Invierte la tasa cuando es una conversión de fiat a crypto para
/// mostrar siempre la tasa desde la perspectiva de la moneda origen.

final class ExchangeRateDisplayFamily extends $Family
    with
        $FunctionalFamilyOverride<
          double?,
          ({
            double? estimatedRate,
            Currency? fromCurrency,
            Currency? toCurrency,
          })
        > {
  const ExchangeRateDisplayFamily._()
    : super(
        retry: null,
        name: r'exchangeRateDisplayProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Provider que calcula la tasa de visualización según el tipo de conversión
  ///
  /// Invierte la tasa cuando es una conversión de fiat a crypto para
  /// mostrar siempre la tasa desde la perspectiva de la moneda origen.

  ExchangeRateDisplayProvider call({
    required double? estimatedRate,
    required Currency? fromCurrency,
    required Currency? toCurrency,
  }) => ExchangeRateDisplayProvider._(
    argument: (
      estimatedRate: estimatedRate,
      fromCurrency: fromCurrency,
      toCurrency: toCurrency,
    ),
    from: this,
  );

  @override
  String toString() => r'exchangeRateDisplayProvider';
}
