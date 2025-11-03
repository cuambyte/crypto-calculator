// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'calculator_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CalculatorState {

 Currency? get fromCurrency; Currency? get toCurrency; double get amount; double? get convertedAmount; double? get estimatedRate; bool get isLoading; String? get errorMessage; String? get inputFieldError;
/// Create a copy of CalculatorState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CalculatorStateCopyWith<CalculatorState> get copyWith => _$CalculatorStateCopyWithImpl<CalculatorState>(this as CalculatorState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CalculatorState&&(identical(other.fromCurrency, fromCurrency) || other.fromCurrency == fromCurrency)&&(identical(other.toCurrency, toCurrency) || other.toCurrency == toCurrency)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.convertedAmount, convertedAmount) || other.convertedAmount == convertedAmount)&&(identical(other.estimatedRate, estimatedRate) || other.estimatedRate == estimatedRate)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.inputFieldError, inputFieldError) || other.inputFieldError == inputFieldError));
}


@override
int get hashCode => Object.hash(runtimeType,fromCurrency,toCurrency,amount,convertedAmount,estimatedRate,isLoading,errorMessage,inputFieldError);

@override
String toString() {
  return 'CalculatorState(fromCurrency: $fromCurrency, toCurrency: $toCurrency, amount: $amount, convertedAmount: $convertedAmount, estimatedRate: $estimatedRate, isLoading: $isLoading, errorMessage: $errorMessage, inputFieldError: $inputFieldError)';
}


}

/// @nodoc
abstract mixin class $CalculatorStateCopyWith<$Res>  {
  factory $CalculatorStateCopyWith(CalculatorState value, $Res Function(CalculatorState) _then) = _$CalculatorStateCopyWithImpl;
@useResult
$Res call({
 Currency? fromCurrency, Currency? toCurrency, double amount, double? convertedAmount, double? estimatedRate, bool isLoading, String? errorMessage, String? inputFieldError
});




}
/// @nodoc
class _$CalculatorStateCopyWithImpl<$Res>
    implements $CalculatorStateCopyWith<$Res> {
  _$CalculatorStateCopyWithImpl(this._self, this._then);

  final CalculatorState _self;
  final $Res Function(CalculatorState) _then;

/// Create a copy of CalculatorState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? fromCurrency = freezed,Object? toCurrency = freezed,Object? amount = null,Object? convertedAmount = freezed,Object? estimatedRate = freezed,Object? isLoading = null,Object? errorMessage = freezed,Object? inputFieldError = freezed,}) {
  return _then(_self.copyWith(
fromCurrency: freezed == fromCurrency ? _self.fromCurrency : fromCurrency // ignore: cast_nullable_to_non_nullable
as Currency?,toCurrency: freezed == toCurrency ? _self.toCurrency : toCurrency // ignore: cast_nullable_to_non_nullable
as Currency?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,convertedAmount: freezed == convertedAmount ? _self.convertedAmount : convertedAmount // ignore: cast_nullable_to_non_nullable
as double?,estimatedRate: freezed == estimatedRate ? _self.estimatedRate : estimatedRate // ignore: cast_nullable_to_non_nullable
as double?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,inputFieldError: freezed == inputFieldError ? _self.inputFieldError : inputFieldError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [CalculatorState].
extension CalculatorStatePatterns on CalculatorState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CalculatorState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CalculatorState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CalculatorState value)  $default,){
final _that = this;
switch (_that) {
case _CalculatorState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CalculatorState value)?  $default,){
final _that = this;
switch (_that) {
case _CalculatorState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Currency? fromCurrency,  Currency? toCurrency,  double amount,  double? convertedAmount,  double? estimatedRate,  bool isLoading,  String? errorMessage,  String? inputFieldError)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CalculatorState() when $default != null:
return $default(_that.fromCurrency,_that.toCurrency,_that.amount,_that.convertedAmount,_that.estimatedRate,_that.isLoading,_that.errorMessage,_that.inputFieldError);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Currency? fromCurrency,  Currency? toCurrency,  double amount,  double? convertedAmount,  double? estimatedRate,  bool isLoading,  String? errorMessage,  String? inputFieldError)  $default,) {final _that = this;
switch (_that) {
case _CalculatorState():
return $default(_that.fromCurrency,_that.toCurrency,_that.amount,_that.convertedAmount,_that.estimatedRate,_that.isLoading,_that.errorMessage,_that.inputFieldError);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Currency? fromCurrency,  Currency? toCurrency,  double amount,  double? convertedAmount,  double? estimatedRate,  bool isLoading,  String? errorMessage,  String? inputFieldError)?  $default,) {final _that = this;
switch (_that) {
case _CalculatorState() when $default != null:
return $default(_that.fromCurrency,_that.toCurrency,_that.amount,_that.convertedAmount,_that.estimatedRate,_that.isLoading,_that.errorMessage,_that.inputFieldError);case _:
  return null;

}
}

}

/// @nodoc


class _CalculatorState extends CalculatorState {
  const _CalculatorState({this.fromCurrency, this.toCurrency, this.amount = 0.0, this.convertedAmount, this.estimatedRate, this.isLoading = false, this.errorMessage, this.inputFieldError}): super._();
  

@override final  Currency? fromCurrency;
@override final  Currency? toCurrency;
@override@JsonKey() final  double amount;
@override final  double? convertedAmount;
@override final  double? estimatedRate;
@override@JsonKey() final  bool isLoading;
@override final  String? errorMessage;
@override final  String? inputFieldError;

/// Create a copy of CalculatorState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CalculatorStateCopyWith<_CalculatorState> get copyWith => __$CalculatorStateCopyWithImpl<_CalculatorState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CalculatorState&&(identical(other.fromCurrency, fromCurrency) || other.fromCurrency == fromCurrency)&&(identical(other.toCurrency, toCurrency) || other.toCurrency == toCurrency)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.convertedAmount, convertedAmount) || other.convertedAmount == convertedAmount)&&(identical(other.estimatedRate, estimatedRate) || other.estimatedRate == estimatedRate)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage)&&(identical(other.inputFieldError, inputFieldError) || other.inputFieldError == inputFieldError));
}


@override
int get hashCode => Object.hash(runtimeType,fromCurrency,toCurrency,amount,convertedAmount,estimatedRate,isLoading,errorMessage,inputFieldError);

@override
String toString() {
  return 'CalculatorState(fromCurrency: $fromCurrency, toCurrency: $toCurrency, amount: $amount, convertedAmount: $convertedAmount, estimatedRate: $estimatedRate, isLoading: $isLoading, errorMessage: $errorMessage, inputFieldError: $inputFieldError)';
}


}

/// @nodoc
abstract mixin class _$CalculatorStateCopyWith<$Res> implements $CalculatorStateCopyWith<$Res> {
  factory _$CalculatorStateCopyWith(_CalculatorState value, $Res Function(_CalculatorState) _then) = __$CalculatorStateCopyWithImpl;
@override @useResult
$Res call({
 Currency? fromCurrency, Currency? toCurrency, double amount, double? convertedAmount, double? estimatedRate, bool isLoading, String? errorMessage, String? inputFieldError
});




}
/// @nodoc
class __$CalculatorStateCopyWithImpl<$Res>
    implements _$CalculatorStateCopyWith<$Res> {
  __$CalculatorStateCopyWithImpl(this._self, this._then);

  final _CalculatorState _self;
  final $Res Function(_CalculatorState) _then;

/// Create a copy of CalculatorState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? fromCurrency = freezed,Object? toCurrency = freezed,Object? amount = null,Object? convertedAmount = freezed,Object? estimatedRate = freezed,Object? isLoading = null,Object? errorMessage = freezed,Object? inputFieldError = freezed,}) {
  return _then(_CalculatorState(
fromCurrency: freezed == fromCurrency ? _self.fromCurrency : fromCurrency // ignore: cast_nullable_to_non_nullable
as Currency?,toCurrency: freezed == toCurrency ? _self.toCurrency : toCurrency // ignore: cast_nullable_to_non_nullable
as Currency?,amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,convertedAmount: freezed == convertedAmount ? _self.convertedAmount : convertedAmount // ignore: cast_nullable_to_non_nullable
as double?,estimatedRate: freezed == estimatedRate ? _self.estimatedRate : estimatedRate // ignore: cast_nullable_to_non_nullable
as double?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,inputFieldError: freezed == inputFieldError ? _self.inputFieldError : inputFieldError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
