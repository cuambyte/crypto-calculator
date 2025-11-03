// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_bottom_sheet_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CurrencyBottomSheetController)
const currencyBottomSheetControllerProvider =
    CurrencyBottomSheetControllerProvider._();

final class CurrencyBottomSheetControllerProvider
    extends $NotifierProvider<CurrencyBottomSheetController, BottomSheetType> {
  const CurrencyBottomSheetControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'currencyBottomSheetControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$currencyBottomSheetControllerHash();

  @$internal
  @override
  CurrencyBottomSheetController create() => CurrencyBottomSheetController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BottomSheetType value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BottomSheetType>(value),
    );
  }
}

String _$currencyBottomSheetControllerHash() =>
    r'd0c8b81d0315d0193e581c33d661d63452641928';

abstract class _$CurrencyBottomSheetController
    extends $Notifier<BottomSheetType> {
  BottomSheetType build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<BottomSheetType, BottomSheetType>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<BottomSheetType, BottomSheetType>,
              BottomSheetType,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
