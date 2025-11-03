// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filtered_currencies_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider que filtra las monedas disponibles por tipo
///
/// Retorna solo las monedas del tipo especificado (crypto o fiat),
/// facilitando la presentación en diferentes selectores.

@ProviderFor(filteredCurrencies)
const filteredCurrenciesProvider = FilteredCurrenciesFamily._();

/// Provider que filtra las monedas disponibles por tipo
///
/// Retorna solo las monedas del tipo especificado (crypto o fiat),
/// facilitando la presentación en diferentes selectores.

final class FilteredCurrenciesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Currency>>,
          List<Currency>,
          FutureOr<List<Currency>>
        >
    with $FutureModifier<List<Currency>>, $FutureProvider<List<Currency>> {
  /// Provider que filtra las monedas disponibles por tipo
  ///
  /// Retorna solo las monedas del tipo especificado (crypto o fiat),
  /// facilitando la presentación en diferentes selectores.
  const FilteredCurrenciesProvider._({
    required FilteredCurrenciesFamily super.from,
    required CurrencyType super.argument,
  }) : super(
         retry: null,
         name: r'filteredCurrenciesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$filteredCurrenciesHash();

  @override
  String toString() {
    return r'filteredCurrenciesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<List<Currency>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Currency>> create(Ref ref) {
    final argument = this.argument as CurrencyType;
    return filteredCurrencies(ref, currencyType: argument);
  }

  @override
  bool operator ==(Object other) {
    return other is FilteredCurrenciesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$filteredCurrenciesHash() =>
    r'0cf2f51de851d7e02c3ce6a051042ad06a73dcd4';

/// Provider que filtra las monedas disponibles por tipo
///
/// Retorna solo las monedas del tipo especificado (crypto o fiat),
/// facilitando la presentación en diferentes selectores.

final class FilteredCurrenciesFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<List<Currency>>, CurrencyType> {
  const FilteredCurrenciesFamily._()
    : super(
        retry: null,
        name: r'filteredCurrenciesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Provider que filtra las monedas disponibles por tipo
  ///
  /// Retorna solo las monedas del tipo especificado (crypto o fiat),
  /// facilitando la presentación en diferentes selectores.

  FilteredCurrenciesProvider call({required CurrencyType currencyType}) =>
      FilteredCurrenciesProvider._(argument: currencyType, from: this);

  @override
  String toString() => r'filteredCurrenciesProvider';
}
