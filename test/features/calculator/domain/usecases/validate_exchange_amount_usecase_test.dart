import 'package:crypto_calculator/src/core/constants/validation_constants.dart';
import 'package:crypto_calculator/src/features/calculator/domain/usecases/validate_exchange_amount_usecase.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late ValidateExchangeAmountUseCase useCase;

  setUp(() {
    useCase = const ValidateExchangeAmountUseCase();
  });

  group('ValidateExchangeAmountUseCase', () {
    test('debe retornar Success cuando el monto es válido', () {
      // Arrange
      const double validAmount = 100.0;

      // Act
      final result = useCase(validAmount);

      // Assert
      expect(result, isA<AmountValidationSuccess>());
    });

    test('debe retornar Failure cuando el monto es 0', () {
      // Arrange
      const double invalidAmount = 0.0;

      // Act
      final result = useCase(invalidAmount);

      // Assert
      expect(result, isA<AmountValidationFailure>());
      if (result is AmountValidationFailure) {
        expect(result.errorMessage, isNotEmpty);
      }
    });

    test('debe retornar Failure cuando el monto es negativo', () {
      // Arrange
      const double invalidAmount = -10.0;

      // Act
      final result = useCase(invalidAmount);

      // Assert
      expect(result, isA<AmountValidationFailure>());
      if (result is AmountValidationFailure) {
        expect(result.errorMessage, isNotEmpty);
      }
    });

    test('debe retornar Failure cuando el monto excede el límite máximo', () {
      // Arrange
      final double invalidAmount = ValidationConstants.maxExchangeAmount + 1;

      // Act
      final result = useCase(invalidAmount);

      // Assert
      expect(result, isA<AmountValidationFailure>());
      if (result is AmountValidationFailure) {
        expect(result.errorMessage, isNotEmpty);
      }
    });

    test('debe retornar Success cuando el monto está en el límite máximo', () {
      // Arrange
      final double validAmount = ValidationConstants.maxExchangeAmount;

      // Act
      final result = useCase(validAmount);

      // Assert
      expect(result, isA<AmountValidationSuccess>());
    });

    test('debe retornar Success con un monto pequeño pero positivo', () {
      // Arrange
      const double validAmount = 0.01;

      // Act
      final result = useCase(validAmount);

      // Assert
      expect(result, isA<AmountValidationSuccess>());
    });
  });
}

