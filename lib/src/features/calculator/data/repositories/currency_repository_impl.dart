import '../../domain/entities/currency.dart';
import '../../domain/repositories/currency_repository.dart';
import '../datasources/currency_local_datasource.dart';

class CurrencyRepositoryImpl implements CurrencyRepository {
  final CurrencyLocalDataSource localDataSource;

  const CurrencyRepositoryImpl({required this.localDataSource});

  @override
  Future<List<Currency>> getAvailableCurrencies() async {
    try {
      return await localDataSource.getAvailableCurrencies();
    } catch (e) {
      // TODO: Manejar errores apropiadamente
      rethrow;
    }
  }
}
