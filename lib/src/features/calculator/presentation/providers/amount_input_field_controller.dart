import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../states/amount_input_field_state.dart';

part 'amount_input_field_controller.g.dart';

@riverpod
final class AmountInputFieldController extends _$AmountInputFieldController {
  late final TextEditingController textController;

  @override
  AmountInputFieldState build() {
    textController = TextEditingController();

    ref.onDispose(() => textController.dispose());

    return const AmountInputFieldState();
  }

  void onTextChanged({required String value}) {
    final cleanValue = value.replaceAll(',', '');
    final amount = double.tryParse(cleanValue) ?? 0.0;
    state = state.copyWith(amount: amount, errorText: null);
  }

  void setError({required String? errorText}) =>
      state = state.copyWith(errorText: errorText);

  void selectAll() => textController.selection = TextSelection(
    baseOffset: 0,
    extentOffset: textController.text.length,
  );
}
