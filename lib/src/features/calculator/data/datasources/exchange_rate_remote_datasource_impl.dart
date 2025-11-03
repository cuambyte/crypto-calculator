import 'package:dio/dio.dart';

import '../../../../core/constants/api_constants.dart';
import '../../../../core/constants/string_constants.dart';
import '../../../../core/errors/failures.dart';
import '../models/exchange_rate_response_model.dart';
import 'exchange_rate_remote_datasource.dart';

final class ExchangeRateRemoteDataSourceImpl
    implements ExchangeRateRemoteDataSource {
  final Dio _dio;

  const ExchangeRateRemoteDataSourceImpl({required Dio dio}) : _dio = dio;

  @override
  Future<ExchangeRateResponseModel> getExchangeRate({
    required String cryptoCurrencyId,
    required String fiatCurrencyId,
    required String amount,
    required String amountCurrencyId,
    required int type,
  }) async {
    try {
      ExchangeRateResponseModel exchangeRateResponseModel;

      final response = await _dio.get(
        ApiConstants.exchangeRateUrl,
        queryParameters: {
          ApiConstants.typeParam: type,
          ApiConstants.cryptoCurrencyIdParam: cryptoCurrencyId,
          ApiConstants.fiatCurrencyIdParam: fiatCurrencyId,
          ApiConstants.amountParam: amount,
          ApiConstants.amountCurrencyIdParam: amountCurrencyId,
        },
      );

      if (response.statusCode == 200 && response.data != null) {
        if (response.data is! Map<String, dynamic>) {
          throw ServerFailure(
            message: StringConstants.invalidServerResponseError,
            code: response.statusCode,
          );
        }

        final Map<String, dynamic> data = response.data;

        if (data.isEmpty ||
            data['data'] == null ||
            (data['data'] is Map && (data['data'] as Map).isEmpty)) {
          throw ServerFailure(
            message: StringConstants.conversionUnavailableError,
            code: response.statusCode,
          );
        }

        try {
          exchangeRateResponseModel = ExchangeRateResponseModel.fromJson(data);
        } catch (_) {
          throw ServerFailure(
            message: StringConstants.serverProcessingError,
            code: response.statusCode,
          );
        }
      } else {
        throw ServerFailure(
          message: '${StringConstants.serverErrorPrefix}${response.statusCode}',
          code: response.statusCode,
        );
      }

      return exchangeRateResponseModel;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout) {
        throw NetworkFailure(
          message: StringConstants.connectionTimeoutError,
          code: e.response?.statusCode,
        );
      } else if (e.type == DioExceptionType.badResponse) {
        throw ServerFailure(
          message: StringConstants.serverRequestError,
          code: e.response?.statusCode,
        );
      } else if (e.type == DioExceptionType.connectionError) {
        throw NetworkFailure(
          message: StringConstants.noInternetConnectionError,
          code: e.response?.statusCode,
        );
      } else {
        throw NetworkFailure(
          message: StringConstants.connectionProblemError,
          code: e.response?.statusCode,
        );
      }
    } on Failure {
      // Re-lanzar los Failures que ya creamos
      rethrow;
    } catch (e) {
      throw UnknownFailure(message: StringConstants.errorMessage);
    }
  }
}
