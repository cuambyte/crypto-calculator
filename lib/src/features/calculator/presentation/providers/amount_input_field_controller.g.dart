// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'amount_input_field_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AmountInputFieldController)
const amountInputFieldControllerProvider =
    AmountInputFieldControllerProvider._();

final class AmountInputFieldControllerProvider
    extends
        $NotifierProvider<AmountInputFieldController, AmountInputFieldState> {
  const AmountInputFieldControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'amountInputFieldControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$amountInputFieldControllerHash();

  @$internal
  @override
  AmountInputFieldController create() => AmountInputFieldController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AmountInputFieldState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AmountInputFieldState>(value),
    );
  }
}

String _$amountInputFieldControllerHash() =>
    r'1cc24033a231044d02d3cff7a925a62c8e39185e';

abstract class _$AmountInputFieldController
    extends $Notifier<AmountInputFieldState> {
  AmountInputFieldState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AmountInputFieldState, AmountInputFieldState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AmountInputFieldState, AmountInputFieldState>,
              AmountInputFieldState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
