import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/currency.dart';
import '../../domain/entities/enum/currency_type.dart';

part 'exchange_rate_display_provider.g.dart';

/// Provider que calcula la tasa de visualización según el tipo de conversión
///
/// Invierte la tasa cuando es una conversión de fiat a crypto para
/// mostrar siempre la tasa desde la perspectiva de la moneda origen.
@riverpod
double? exchangeRateDisplay(
  Ref ref, {
  required double? estimatedRate,
  required Currency? fromCurrency,
  required Currency? toCurrency,
}) {
  if (estimatedRate == null ||
      fromCurrency == null ||
      toCurrency == null) {
    return null;
  }

  final bool isCryptoToFiat = fromCurrency.type == CurrencyType.crypto &&
      toCurrency.type == CurrencyType.fiat;

  return isCryptoToFiat ? estimatedRate : 1 / estimatedRate;
}

