import '../../domain/entities/currency.dart';

abstract class CurrencyLocalDataSource {
  Future<List<Currency>> getAvailableCurrencies();
}
