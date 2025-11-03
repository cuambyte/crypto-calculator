import 'package:freezed_annotation/freezed_annotation.dart';

part 'amount_input_field_state.freezed.dart';

@freezed
abstract class AmountInputFieldState with _$AmountInputFieldState {
  const factory AmountInputFieldState({
    @Default(0.0) double amount,
    String? errorText,
  }) = _AmountInputFieldState;

  const AmountInputFieldState._();

  bool get hasValue => amount > 0;
}
