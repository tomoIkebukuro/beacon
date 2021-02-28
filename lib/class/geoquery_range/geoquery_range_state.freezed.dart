// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'geoquery_range_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$GeoqueryRangeStateTearOff {
  const _$GeoqueryRangeStateTearOff();

// ignore: unused_element
  _GeoqueryRangeState call({int level = 8}) {
    return _GeoqueryRangeState(
      level: level,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $GeoqueryRangeState = _$GeoqueryRangeStateTearOff();

/// @nodoc
mixin _$GeoqueryRangeState {
  int get level;

  $GeoqueryRangeStateCopyWith<GeoqueryRangeState> get copyWith;
}

/// @nodoc
abstract class $GeoqueryRangeStateCopyWith<$Res> {
  factory $GeoqueryRangeStateCopyWith(
          GeoqueryRangeState value, $Res Function(GeoqueryRangeState) then) =
      _$GeoqueryRangeStateCopyWithImpl<$Res>;
  $Res call({int level});
}

/// @nodoc
class _$GeoqueryRangeStateCopyWithImpl<$Res>
    implements $GeoqueryRangeStateCopyWith<$Res> {
  _$GeoqueryRangeStateCopyWithImpl(this._value, this._then);

  final GeoqueryRangeState _value;
  // ignore: unused_field
  final $Res Function(GeoqueryRangeState) _then;

  @override
  $Res call({
    Object level = freezed,
  }) {
    return _then(_value.copyWith(
      level: level == freezed ? _value.level : level as int,
    ));
  }
}

/// @nodoc
abstract class _$GeoqueryRangeStateCopyWith<$Res>
    implements $GeoqueryRangeStateCopyWith<$Res> {
  factory _$GeoqueryRangeStateCopyWith(
          _GeoqueryRangeState value, $Res Function(_GeoqueryRangeState) then) =
      __$GeoqueryRangeStateCopyWithImpl<$Res>;
  @override
  $Res call({int level});
}

/// @nodoc
class __$GeoqueryRangeStateCopyWithImpl<$Res>
    extends _$GeoqueryRangeStateCopyWithImpl<$Res>
    implements _$GeoqueryRangeStateCopyWith<$Res> {
  __$GeoqueryRangeStateCopyWithImpl(
      _GeoqueryRangeState _value, $Res Function(_GeoqueryRangeState) _then)
      : super(_value, (v) => _then(v as _GeoqueryRangeState));

  @override
  _GeoqueryRangeState get _value => super._value as _GeoqueryRangeState;

  @override
  $Res call({
    Object level = freezed,
  }) {
    return _then(_GeoqueryRangeState(
      level: level == freezed ? _value.level : level as int,
    ));
  }
}

/// @nodoc
class _$_GeoqueryRangeState implements _GeoqueryRangeState {
  const _$_GeoqueryRangeState({this.level = 8}) : assert(level != null);

  @JsonKey(defaultValue: 8)
  @override
  final int level;

  @override
  String toString() {
    return 'GeoqueryRangeState(level: $level)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GeoqueryRangeState &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(level);

  @override
  _$GeoqueryRangeStateCopyWith<_GeoqueryRangeState> get copyWith =>
      __$GeoqueryRangeStateCopyWithImpl<_GeoqueryRangeState>(this, _$identity);
}

abstract class _GeoqueryRangeState implements GeoqueryRangeState {
  const factory _GeoqueryRangeState({int level}) = _$_GeoqueryRangeState;

  @override
  int get level;
  @override
  _$GeoqueryRangeStateCopyWith<_GeoqueryRangeState> get copyWith;
}
