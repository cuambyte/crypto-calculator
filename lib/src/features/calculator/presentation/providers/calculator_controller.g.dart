// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'calculator_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CalculatorController)
const calculatorControllerProvider = CalculatorControllerProvider._();

final class CalculatorControllerProvider
    extends $NotifierProvider<CalculatorController, CalculatorState> {
  const CalculatorControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'calculatorControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$calculatorControllerHash();

  @$internal
  @override
  CalculatorController create() => CalculatorController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CalculatorState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CalculatorState>(value),
    );
  }
}

String _$calculatorControllerHash() =>
    r'350199e59a6ab62077009e1bd5c2ed8f39f5717b';

abstract class _$CalculatorController extends $Notifier<CalculatorState> {
  CalculatorState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<CalculatorState, CalculatorState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CalculatorState, CalculatorState>,
              CalculatorState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
