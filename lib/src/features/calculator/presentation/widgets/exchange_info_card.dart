import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/string_constants.dart';
import '../../../../core/utils/formatters/rate_formatter.dart';
import '../../domain/entities/currency.dart';
import '../providers/exchange_rate_display_provider.dart';
import 'exchange_info_row.dart';

final class ExchangeInfoCard extends ConsumerWidget {
  final double? estimatedRate;
  final double? convertedAmount;
  final Currency? fromCurrency;
  final Currency? toCurrency;
  final bool isLoading;

  const ExchangeInfoCard({
    super.key,
    this.estimatedRate,
    this.convertedAmount,
    this.fromCurrency,
    this.toCurrency,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeData theme = Theme.of(context);

    // Usar provider para calcular la tasa de visualización
    final double? displayRate = ref.watch(
      exchangeRateDisplayProvider(
        estimatedRate: estimatedRate,
        fromCurrency: fromCurrency,
        toCurrency: toCurrency,
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (isLoading) ...[
          const Center(child: CircularProgressIndicator()),
        ] else if (displayRate != null && convertedAmount != null) ...[
          ExchangeInfoRow(
            label: StringConstants.estimatedRateLabel,
            value:
                '1 ${fromCurrency?.symbol ?? ''} ≈ ${RateFormatter.formatRate(rate: displayRate)} ${toCurrency?.symbol ?? ''}',
          ),
          const SizedBox(height: 12),
          ExchangeInfoRow(
            label: StringConstants.youWillReceiveLabel,
            value:
                '≈ ${convertedAmount!.toStringAsFixed(2)} ${toCurrency?.symbol ?? ''}',
          ),
          const SizedBox(height: 12),
          ExchangeInfoRow(
            label: StringConstants.estimatedTimeLabel,
            value: StringConstants.estimatedTimeValue,
          ),
        ] else ...[
          Text(
            StringConstants.exchangeInfoPlaceholder,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurface.withValues(alpha: 0.7),
              fontStyle: FontStyle.italic,
            ),
          ),
        ],
      ],
    );
  }
}
