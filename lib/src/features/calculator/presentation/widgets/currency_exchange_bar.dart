import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/constants/string_constants.dart';
import '../../../../core/theme/colors/app_colors.dart';
import '../../domain/entities/currency.dart';
import 'currency_label.dart';
import 'currency_selector_compact.dart';

final class CurrencyExchangeBar extends StatelessWidget {
  final Currency? fromCurrency;
  final Currency? toCurrency;
  final VoidCallback onFromTap;
  final VoidCallback onSwap;
  final VoidCallback onToTap;
  final bool canSwap;

  const CurrencyExchangeBar({
    super.key,
    required this.fromCurrency,
    required this.toCurrency,
    required this.onFromTap,
    required this.onSwap,
    required this.onToTap,
    this.canSwap = true,
  });

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: AppColors.primaryYellow, width: 2.5),
            borderRadius: BorderRadius.horizontal(
              left: Radius.circular(100),
              right: Radius.circular(100),
            ),
          ),
          height: 46,
        ),
        Positioned(
          top: -6,
          left: 30,
          child: CurrencyLabel(
            text: StringConstants.haveLabel,
            color: theme.colorScheme.onSurface,
            backgroundColor: theme.colorScheme.surface,
          ),
        ),
        Positioned(
          top: -6,
          right: 30,
          child: CurrencyLabel(
            text: StringConstants.wantLabel,
            color: theme.colorScheme.onSurface,
            backgroundColor: theme.colorScheme.surface,
          ),
        ),
        InkWell(
          onTap: onSwap,
          child: CircleAvatar(
            backgroundColor: AppColors.primaryYellow,
            radius: 27.0,
            child: SvgPicture.asset(
              'assets/icons/swap.svg',
              height: 30,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CurrencySelectorCompact(
                  selectedCurrency: fromCurrency,
                  onTap: onFromTap,
                  isFromSelector: true,
                ),
              ),
              CurrencySelectorCompact(
                selectedCurrency: toCurrency,
                onTap: onToTap,
                isFromSelector: false,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
