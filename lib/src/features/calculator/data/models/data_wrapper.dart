import 'by_price.dart';

final class DataWrapper {
  final ByPrice byPrice;

  const DataWrapper({required this.byPrice});

  factory DataWrapper.fromJson(Map<String, dynamic> json) {
    final ByPrice byPrice = ByPrice.fromJson(
      json['byPrice'] as Map<String, dynamic>,
    );

    return DataWrapper(byPrice: byPrice);
  }
}
