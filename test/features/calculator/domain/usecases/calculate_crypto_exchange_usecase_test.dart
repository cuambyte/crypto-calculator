import 'package:crypto_calculator/src/features/calculator/domain/entities/calculate_exchange_params.dart';
import 'package:crypto_calculator/src/features/calculator/domain/entities/currency.dart';
import 'package:crypto_calculator/src/features/calculator/domain/entities/enum/currency_type.dart';
import 'package:crypto_calculator/src/features/calculator/domain/repositories/calculator_repository.dart';
import 'package:crypto_calculator/src/features/calculator/domain/usecases/calculate_crypto_exchange_usecase.dart';
import 'package:flutter_test/flutter_test.dart';

/// Mock simple del repository para los tests
class MockCalculatorRepository implements CalculatorRepository {
  final double exchangeRateToReturn;

  MockCalculatorRepository({required this.exchangeRateToReturn});

  @override
  Future<double> getExchangeRate({
    required String cryptoCurrencyId,
    required String fiatCurrencyId,
    required String amount,
    required String amountCurrencyId,
    required int type,
  }) async {
    return exchangeRateToReturn;
  }
}

void main() {
  late CalculateCryptoExchangeUseCase useCase;
  late MockCalculatorRepository mockRepository;

  const Currency cryptoCurrency = Currency(
    id: 'TATUM-TRON-USDT',
    name: 'Tether',
    symbol: 'USDT',
    assetPath: 'assets/cripto_currencies/TATUM-TRON-USDT.png',
    type: CurrencyType.crypto,
  );

  const Currency fiatCurrency = Currency(
    id: 'VES',
    name: 'Bolívar',
    symbol: 'Bs.',
    assetPath: 'assets/fiat_currencies/VES.png',
    type: CurrencyType.fiat,
  );

  setUp(() {
    mockRepository = MockCalculatorRepository(exchangeRateToReturn: 50.0);
    useCase = CalculateCryptoExchangeUseCase(repository: mockRepository);
  });

  group('CalculateCryptoExchangeUseCase', () {
    test('debe calcular correctamente crypto a fiat', () async {
      // Arrange
      const double amount = 10.0;
      const double expectedExchangeRate = 50.0;
      const double expectedConvertedAmount = 500.0; // 10 * 50

      final params = CalculateExchangeParams(
        fromCurrency: cryptoCurrency,
        toCurrency: fiatCurrency,
        amount: amount,
      );

      // Act
      final result = await useCase(params: params);

      // Assert
      expect(result.exchangeRate, expectedExchangeRate);
      expect(result.convertedAmount, expectedConvertedAmount);
    });

    test('debe calcular correctamente fiat a crypto', () async {
      // Arrange
      const double amount = 500.0;
      const double expectedExchangeRate = 50.0;
      const double expectedConvertedAmount = 10.0; // 500 / 50

      final params = CalculateExchangeParams(
        fromCurrency: fiatCurrency,
        toCurrency: cryptoCurrency,
        amount: amount,
      );

      // Act
      final result = await useCase(params: params);

      // Assert
      expect(result.exchangeRate, expectedExchangeRate);
      expect(result.convertedAmount, expectedConvertedAmount);
    });

    test('debe lanzar ArgumentError si el monto es 0', () async {
      // Arrange
      final params = CalculateExchangeParams(
        fromCurrency: cryptoCurrency,
        toCurrency: fiatCurrency,
        amount: 0.0,
      );

      // Act & Assert
      expect(
        () async => await useCase(params: params),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('debe lanzar ArgumentError si el monto es negativo', () async {
      // Arrange
      final params = CalculateExchangeParams(
        fromCurrency: cryptoCurrency,
        toCurrency: fiatCurrency,
        amount: -10.0,
      );

      // Act & Assert
      expect(
        () async => await useCase(params: params),
        throwsA(isA<ArgumentError>()),
      );
    });

    test('debe manejar correctamente tasas de cambio decimales', () async {
      // Arrange
      mockRepository = MockCalculatorRepository(exchangeRateToReturn: 0.025);
      useCase = CalculateCryptoExchangeUseCase(repository: mockRepository);

      const double amount = 100.0;
      const double expectedExchangeRate = 0.025;
      const double expectedConvertedAmount = 2.5; // 100 * 0.025

      final params = CalculateExchangeParams(
        fromCurrency: cryptoCurrency,
        toCurrency: fiatCurrency,
        amount: amount,
      );

      // Act
      final result = await useCase(params: params);

      // Assert
      expect(result.exchangeRate, expectedExchangeRate);
      expect(result.convertedAmount, expectedConvertedAmount);
    });
  });
}

