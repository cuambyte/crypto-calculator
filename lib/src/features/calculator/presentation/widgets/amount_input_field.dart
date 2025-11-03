import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/string_constants.dart';
import '../../../../core/theme/colors/app_colors.dart';
import '../../../../core/utils/formatters/thousand_separator_input_formatter.dart';
import '../providers/amount_input_field_controller.dart';
import '../providers/calculator_controller.dart';

final class AmountInputField extends ConsumerStatefulWidget {
  const AmountInputField({super.key});

  @override
  ConsumerState<AmountInputField> createState() => _AmountInputFieldState();
}

class _AmountInputFieldState extends ConsumerState<AmountInputField> {
  late final FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        _focusNode.requestFocus();
      }
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AmountInputFieldController controller = ref.watch(
      amountInputFieldControllerProvider.notifier,
    );

    // Escuchar el error desde CalculatorState en lugar de AmountInputFieldState
    final String? errorText = ref.watch(
      calculatorControllerProvider.select((value) => value.inputFieldError),
    );

    final String currencySymbol = ref.watch(
      calculatorControllerProvider.select(
        (value) => value.fromCurrency?.symbol ?? '',
      ),
    );

    ref.listen(
      amountInputFieldControllerProvider.select((value) => value.amount),
      (previous, next) {
        ref.read(calculatorControllerProvider.notifier).setAmount(amount: next);
      },
    );

    return TextFormField(
      controller: controller.textController,
      focusNode: _focusNode,
      keyboardType: const TextInputType.numberWithOptions(decimal: true),
      inputFormatters: [ThousandSeparatorInputFormatter()],
      decoration: InputDecoration(
        hintText: StringConstants.amountPlaceholder,
        prefixText: currencySymbol.isNotEmpty ? '$currencySymbol ' : null,
        prefixStyle: TextStyle(
          color: AppColors.primaryYellow,
          fontSize: 16,
          height: 1.0,
        ),
        errorText: errorText,
        errorMaxLines: 3,
      ),
      style: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 16,
        height: 1.0,
        color: Theme.of(context).colorScheme.onSurface,
      ),
      onChanged: (value) => controller.onTextChanged(value: value),
      onTap: controller.selectAll,
    );
  }
}
