import '../entities/currency.dart';

abstract class CurrencyRepository {
  Future<List<Currency>> getAvailableCurrencies();
}
