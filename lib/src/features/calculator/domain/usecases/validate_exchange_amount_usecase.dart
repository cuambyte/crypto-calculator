import '../../../../core/constants/string_constants.dart';
import '../../../../core/constants/validation_constants.dart';

/// Result de validación de monto
sealed class AmountValidationResult {
  const AmountValidationResult();
}

/// Validación exitosa
final class AmountValidationSuccess extends AmountValidationResult {
  const AmountValidationSuccess();
}

/// Validación fallida con mensaje de error
final class AmountValidationFailure extends AmountValidationResult {
  final String errorMessage;

  const AmountValidationFailure(this.errorMessage);
}

/// Use Case para validar el monto de intercambio
///
/// Centraliza todas las reglas de validación de montos:
/// - Debe ser mayor a 0
/// - No debe exceder el límite máximo
///
/// Retorna un [AmountValidationResult] que puede ser Success o Failure.
final class ValidateExchangeAmountUseCase {
  const ValidateExchangeAmountUseCase();

  AmountValidationResult call(double amount) {
    if (amount <= ValidationConstants.minExchangeAmount) {
      return const AmountValidationFailure(StringConstants.invalidAmountError);
    }

    if (amount > ValidationConstants.maxExchangeAmount) {
      return const AmountValidationFailure(
        StringConstants.amountExceedsLimitError,
      );
    }

    return const AmountValidationSuccess();
  }
}
