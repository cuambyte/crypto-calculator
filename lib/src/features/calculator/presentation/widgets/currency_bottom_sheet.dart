import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/string_constants.dart';
import '../../../../core/widgets/bottom_sheet_handle.dart';
import '../../../../core/widgets/error_state_widget.dart';
import '../../domain/entities/currency.dart';
import '../../domain/entities/enum/currency_type.dart';
import '../providers/filtered_currencies_provider.dart';
import 'currency_bottomsheet_tile.dart';

final class CurrencyBottomSheet extends ConsumerWidget {
  final Currency? selectedCurrency;
  final void Function(Currency) onCurrencySelected;
  final CurrencyType currencyType;

  const CurrencyBottomSheet({
    super.key,
    required this.selectedCurrency,
    required this.onCurrencySelected,
    required this.currencyType,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ThemeData theme = Theme.of(context);
    // Usar provider de currencies filtradas
    final AsyncValue<List<Currency>> filteredCurrenciesAsync = ref.watch(
      filteredCurrenciesProvider(currencyType: currencyType),
    );
    final String title = currencyType == CurrencyType.fiat
        ? StringConstants.fiatLabel
        : StringConstants.cryptoLabel;

    return Container(
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: BoxDecoration(
        color: theme.colorScheme.surface,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: Column(
        children: [
          const BottomSheetHandle(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(
              title,
              style: theme.textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Expanded(
            child: filteredCurrenciesAsync.when(
              data: (List<Currency> filteredCurrencies) {
                return RadioGroup<String>(
                  groupValue: selectedCurrency?.id,
                  onChanged: (String? currencyId) {
                    if (currencyId != null) {
                      final currency = filteredCurrencies.firstWhere(
                        (c) => c.id == currencyId,
                      );
                      onCurrencySelected(currency);
                      Navigator.of(context).pop();
                    }
                  },
                  child: ListView.builder(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    itemCount: filteredCurrencies.length,
                    itemBuilder: (context, index) {
                      final currency = filteredCurrencies[index];
                      return CurrencyBottomSheetTile(
                        currency: currency,
                        isSelected: selectedCurrency?.id == currency.id,
                        onTap: () {
                          onCurrencySelected(currency);
                          Navigator.of(context).pop();
                        },
                      );
                    },
                  ),
                );
              },
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (error, _) => ErrorStateWidget(
                title: StringConstants.loadCurrenciesError,
                message: error.toString(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
