// lib/src/features/calculator/data/datasources/currency_local_datasource_impl.dart
import '../../../../core/constants/string_constants.dart';
import '../../domain/entities/currency.dart';
import '../../domain/entities/enum/currency_type.dart';
import 'currency_local_datasource.dart';

final class CurrencyLocalDataSourceImpl implements CurrencyLocalDataSource {
  const CurrencyLocalDataSourceImpl();

  @override
  Future<List<Currency>> getAvailableCurrencies() async {
    await Future.delayed(const Duration(milliseconds: 2300));

    return [
      const Currency(
        id: 'TATUM-TRON-USDT',
        name: 'Tether (USDT)',
        symbol: 'USDT',
        assetPath: 'assets/cripto_currencies/TATUM-TRON-USDT.png',
        type: CurrencyType.crypto,
      ),
      const Currency(
        id: 'VES',
        name: 'Bolívares (Bs)',
        symbol: 'VES',
        assetPath: 'assets/fiat_currencies/VES.png',
        type: CurrencyType.fiat,
      ),
      const Currency(
        id: 'BRL',
        name: 'Real Brasileño (R${StringConstants.currencySymbol})',
        symbol: 'BRL',
        assetPath: 'assets/fiat_currencies/BRL.png',
        type: CurrencyType.fiat,
      ),
      const Currency(
        id: 'COP',
        name: 'Pesos Colombianos (COL${StringConstants.currencySymbol})',
        symbol: 'COP',
        assetPath: 'assets/fiat_currencies/COP.png',
        type: CurrencyType.fiat,
      ),
      const Currency(
        id: 'PEN',
        name: 'Soles Peruanos (S/)',
        symbol: 'PEN',
        assetPath: 'assets/fiat_currencies/PEN.png',
        type: CurrencyType.fiat,
      ),
    ];
  }
}
