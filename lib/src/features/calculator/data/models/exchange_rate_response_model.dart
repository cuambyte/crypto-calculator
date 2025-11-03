import 'data_wrapper.dart';

final class ExchangeRateResponseModel {
  final DataWrapper data;

  const ExchangeRateResponseModel({required this.data});

  factory ExchangeRateResponseModel.fromJson(Map<String, dynamic> json) {
    final DataWrapper data = DataWrapper.fromJson(
      json['data'] as Map<String, dynamic>,
    );

    return ExchangeRateResponseModel(data: data);
  }
}
