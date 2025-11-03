final class StringConstants {
  // Errores generales
  static const String errorMessage =
      'Ocurrió un error inesperado. Por favor, intenta nuevamente.';
  static const String pageNotFound = 'Página no encontrada';
  static const String goToHome = 'Ir a Inicio';
  // Errores de validación
  static const String invalidAmountError = 'Debes ingresar un monto válido';
  static const String amountExceedsLimitError =
      'El monto excede el límite permitido';
  static const String amountMustBePositiveError = 'El monto debe ser mayor a 0';

  // Errores de red
  static const String connectionTimeoutError =
      'La conexión está tardando demasiado. Verifica tu internet e intenta nuevamente.';
  static const String noInternetConnectionError =
      'No hay conexión a internet. Verifica tu conexión e intenta nuevamente.';
  static const String connectionProblemError =
      'Ocurrió un problema de conexión. Por favor, intenta más tarde.';

  // Errores del servidor
  static const String invalidServerResponseError =
      'Formato de respuesta inválido del servidor';
  static const String conversionUnavailableError =
      'Esta conversión no está disponible en este momento. Por favor, intenta con otra moneda o cantidad.';
  static const String serverProcessingError =
      'No se pudo procesar la información del servidor. Intenta con otra moneda.';
  static const String serverRequestError =
      'El servidor no pudo procesar tu solicitud. Intenta más tarde.';
  static const String serverErrorPrefix = 'Error del servidor: ';

  // Labels de UI
  static const String fiatLabel = 'FIAT';
  static const String cryptoLabel = 'Cripto';
  static const String haveLabel = 'TENGO';
  static const String wantLabel = 'QUIERO';

  // Mensajes informativos
  static const String estimatedRateLabel = 'Tasa estimada';
  static const String youWillReceiveLabel = 'Recibirás';
  static const String estimatedTimeLabel = 'Tiempo estimado';
  static const String estimatedTimeValue = '≈ 10 Min';
  static const String exchangeInfoPlaceholder =
      'Ingresa el monto y selecciona las monedas para ver la información del intercambio';
  static const String loadCurrenciesError = 'Error al cargar las monedas';

  // Textos de botones
  static const String exchangeButtonText = 'Cambiar';

  // Placeholders
  static const String amountPlaceholder = '0.00';
  static const String loadingText = 'Cargando...';
  static const String currencySymbol = '\$';
}
