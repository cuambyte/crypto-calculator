/// Constantes de validación para la aplicación
///
/// Centraliza todos los límites y reglas de validación
/// para facilitar su mantenimiento y modificación.
final class ValidationConstants {
  // Validaciones de montos de intercambio
  static const double maxExchangeAmount = 1000000.0;
  static const double minExchangeAmount = 0.0;

  // Prevenir instanciación
  ValidationConstants._();
}

