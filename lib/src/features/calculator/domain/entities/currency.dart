import 'enum/currency_type.dart';

final class Currency {
  final String id;
  final String name;
  final String symbol;
  final String assetPath;
  final CurrencyType type;

  const Currency({
    required this.id,
    required this.name,
    required this.symbol,
    required this.assetPath,
    required this.type,
  });
}
