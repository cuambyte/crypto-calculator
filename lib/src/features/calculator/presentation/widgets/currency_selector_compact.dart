import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/string_constants.dart';
import '../../../../core/widgets/currency_image_widget.dart';
import '../../domain/entities/currency.dart';
import '../../domain/entities/enum/bottom_sheet_type.dart';
import '../providers/currency_bottom_sheet_controller.dart';

final class CurrencySelectorCompact extends ConsumerWidget {
  final Currency? selectedCurrency;
  final VoidCallback onTap;
  final bool isFromSelector;

  const CurrencySelectorCompact({
    super.key,
    required this.selectedCurrency,
    required this.onTap,
    required this.isFromSelector,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeData theme = Theme.of(context);
    final BottomSheetType currentBottomSheet = ref.watch(
      currencyBottomSheetControllerProvider,
    );

    final bool isThisOpen = isFromSelector
        ? currentBottomSheet == BottomSheetType.from
        : currentBottomSheet == BottomSheetType.to;

    return InkWell(
      onTap: onTap,
      child: Row(
        children: [
          if (selectedCurrency != null)
            CurrencyImageWidget(
              assetPath: selectedCurrency!.assetPath,
              size: 24,
            ),
          const SizedBox(width: 10),
          Text(
            selectedCurrency != null
                ? selectedCurrency!.symbol
                : StringConstants.loadingText,
            style: theme.textTheme.titleSmall?.copyWith(
              fontWeight: selectedCurrency != null
                  ? FontWeight.w600
                  : FontWeight.w400,
            ),
            overflow: TextOverflow.ellipsis,
          ),
          if (selectedCurrency != null)
            AnimatedRotation(
              turns: isThisOpen ? 0.75 : 0.25,
              duration: const Duration(milliseconds: 200),
              child: Icon(
                Icons.chevron_right,
                size: 30,
                color: theme.colorScheme.outline,
              ),
            ),
        ],
      ),
    );
  }
}
