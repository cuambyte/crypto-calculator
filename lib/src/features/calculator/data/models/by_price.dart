final class ByPrice {
  final double? fiatToCryptoExchangeRate;

  const ByPrice({required this.fiatToCryptoExchangeRate});

  static double? _toDouble(dynamic value) {
    if (value == null) return null;
    if (value is num) return value.toDouble();
    if (value is String) return double.tryParse(value);
    return null;
  }

  factory ByPrice.fromJson(Map<String, dynamic> json) {
    final double? fiatToCryptoExchangeRate = _toDouble(
      json['fiatToCryptoExchangeRate'],
    );
    return ByPrice(fiatToCryptoExchangeRate: fiatToCryptoExchangeRate);
  }
}
