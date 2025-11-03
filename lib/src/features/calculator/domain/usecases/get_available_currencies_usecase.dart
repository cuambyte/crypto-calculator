import '../entities/currency.dart';
import '../repositories/currency_repository.dart';

final class GetAvailableCurrenciesUseCase {
  final CurrencyRepository repository;

  const GetAvailableCurrenciesUseCase({required this.repository});

  Future<List<Currency>> call() async {
    return await repository.getAvailableCurrencies();
  }
}
