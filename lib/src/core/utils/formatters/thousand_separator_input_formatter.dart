import 'package:flutter/services.dart';

/// Formatter que agrega separadores de miles mientras el usuario escribe
class ThousandSeparatorInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    // Si el texto está vacío, no hacer nada
    if (newValue.text.isEmpty) {
      return newValue;
    }

    // Remover todas las comas existentes
    final String unformattedText = newValue.text.replaceAll(',', '');

    // Validar que solo contenga números y punto decimal
    if (!RegExp(r'^\d*\.?\d*$').hasMatch(unformattedText)) {
      return oldValue;
    }

    // Separar parte entera y decimal
    final parts = unformattedText.split('.');
    String integerPart = parts[0];
    final String? decimalPart = parts.length > 1 ? parts[1] : null;

    // Agregar comas a la parte entera
    String formattedInteger = '';
    int counter = 0;
    for (int i = integerPart.length - 1; i >= 0; i--) {
      if (counter == 3) {
        formattedInteger = ',$formattedInteger';
        counter = 0;
      }
      formattedInteger = integerPart[i] + formattedInteger;
      counter++;
    }

    // Construir el texto final
    final String formattedText = decimalPart != null
        ? '$formattedInteger.$decimalPart'
        : formattedInteger;

    // Calcular la nueva posición del cursor
    int selectionOffset = newValue.selection.end;

    // Contar cuántas comas hay antes del cursor en el texto antiguo
    final int oldCommasBeforeCursor =
        oldValue.text.substring(0, oldValue.selection.end).split(',').length -
        1;

    // Contar cuántas comas hay antes del cursor en el texto nuevo
    final String beforeCursor = unformattedText.substring(
      0,
      newValue.selection.end - oldCommasBeforeCursor,
    );
    int newCommasBeforeCursor = 0;
    int charCount = 0;

    for (
      int i = 0;
      i < formattedText.length && charCount < beforeCursor.length;
      i++
    ) {
      if (formattedText[i] == ',') {
        newCommasBeforeCursor++;
      } else {
        charCount++;
      }
    }

    selectionOffset = beforeCursor.length + newCommasBeforeCursor;

    return TextEditingValue(
      text: formattedText,
      selection: TextSelection.collapsed(offset: selectionOffset),
    );
  }
}
