import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/currency.dart';
import '../../domain/entities/enum/currency_type.dart';
import 'providers.dart';

part 'filtered_currencies_provider.g.dart';

/// Provider que filtra las monedas disponibles por tipo
///
/// Retorna solo las monedas del tipo especificado (crypto o fiat),
/// facilitando la presentación en diferentes selectores.
@riverpod
Future<List<Currency>> filteredCurrencies(
  Ref ref, {
  required CurrencyType currencyType,
}) async {
  final allCurrencies = await ref.watch(availableCurrenciesProvider.future);

  return allCurrencies.where((c) => c.type == currencyType).toList();
}

