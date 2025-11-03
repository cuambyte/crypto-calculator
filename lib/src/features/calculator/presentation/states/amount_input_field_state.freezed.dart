// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'amount_input_field_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AmountInputFieldState {

 double get amount; String? get errorText;
/// Create a copy of AmountInputFieldState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AmountInputFieldStateCopyWith<AmountInputFieldState> get copyWith => _$AmountInputFieldStateCopyWithImpl<AmountInputFieldState>(this as AmountInputFieldState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AmountInputFieldState&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.errorText, errorText) || other.errorText == errorText));
}


@override
int get hashCode => Object.hash(runtimeType,amount,errorText);

@override
String toString() {
  return 'AmountInputFieldState(amount: $amount, errorText: $errorText)';
}


}

/// @nodoc
abstract mixin class $AmountInputFieldStateCopyWith<$Res>  {
  factory $AmountInputFieldStateCopyWith(AmountInputFieldState value, $Res Function(AmountInputFieldState) _then) = _$AmountInputFieldStateCopyWithImpl;
@useResult
$Res call({
 double amount, String? errorText
});




}
/// @nodoc
class _$AmountInputFieldStateCopyWithImpl<$Res>
    implements $AmountInputFieldStateCopyWith<$Res> {
  _$AmountInputFieldStateCopyWithImpl(this._self, this._then);

  final AmountInputFieldState _self;
  final $Res Function(AmountInputFieldState) _then;

/// Create a copy of AmountInputFieldState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? amount = null,Object? errorText = freezed,}) {
  return _then(_self.copyWith(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,errorText: freezed == errorText ? _self.errorText : errorText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AmountInputFieldState].
extension AmountInputFieldStatePatterns on AmountInputFieldState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AmountInputFieldState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AmountInputFieldState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AmountInputFieldState value)  $default,){
final _that = this;
switch (_that) {
case _AmountInputFieldState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AmountInputFieldState value)?  $default,){
final _that = this;
switch (_that) {
case _AmountInputFieldState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double amount,  String? errorText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AmountInputFieldState() when $default != null:
return $default(_that.amount,_that.errorText);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double amount,  String? errorText)  $default,) {final _that = this;
switch (_that) {
case _AmountInputFieldState():
return $default(_that.amount,_that.errorText);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double amount,  String? errorText)?  $default,) {final _that = this;
switch (_that) {
case _AmountInputFieldState() when $default != null:
return $default(_that.amount,_that.errorText);case _:
  return null;

}
}

}

/// @nodoc


class _AmountInputFieldState extends AmountInputFieldState {
  const _AmountInputFieldState({this.amount = 0.0, this.errorText}): super._();
  

@override@JsonKey() final  double amount;
@override final  String? errorText;

/// Create a copy of AmountInputFieldState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AmountInputFieldStateCopyWith<_AmountInputFieldState> get copyWith => __$AmountInputFieldStateCopyWithImpl<_AmountInputFieldState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AmountInputFieldState&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.errorText, errorText) || other.errorText == errorText));
}


@override
int get hashCode => Object.hash(runtimeType,amount,errorText);

@override
String toString() {
  return 'AmountInputFieldState(amount: $amount, errorText: $errorText)';
}


}

/// @nodoc
abstract mixin class _$AmountInputFieldStateCopyWith<$Res> implements $AmountInputFieldStateCopyWith<$Res> {
  factory _$AmountInputFieldStateCopyWith(_AmountInputFieldState value, $Res Function(_AmountInputFieldState) _then) = __$AmountInputFieldStateCopyWithImpl;
@override @useResult
$Res call({
 double amount, String? errorText
});




}
/// @nodoc
class __$AmountInputFieldStateCopyWithImpl<$Res>
    implements _$AmountInputFieldStateCopyWith<$Res> {
  __$AmountInputFieldStateCopyWithImpl(this._self, this._then);

  final _AmountInputFieldState _self;
  final $Res Function(_AmountInputFieldState) _then;

/// Create a copy of AmountInputFieldState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? amount = null,Object? errorText = freezed,}) {
  return _then(_AmountInputFieldState(
amount: null == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double,errorText: freezed == errorText ? _self.errorText : errorText // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
