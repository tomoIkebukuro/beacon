// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sort_with_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SortWithStateTearOff {
  const _$SortWithStateTearOff();

// ignore: unused_element
  _SortWithState call({@required SortWith sortWith}) {
    return _SortWithState(
      sortWith: sortWith,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SortWithState = _$SortWithStateTearOff();

/// @nodoc
mixin _$SortWithState {
  SortWith get sortWith;

  $SortWithStateCopyWith<SortWithState> get copyWith;
}

/// @nodoc
abstract class $SortWithStateCopyWith<$Res> {
  factory $SortWithStateCopyWith(
          SortWithState value, $Res Function(SortWithState) then) =
      _$SortWithStateCopyWithImpl<$Res>;
  $Res call({SortWith sortWith});
}

/// @nodoc
class _$SortWithStateCopyWithImpl<$Res>
    implements $SortWithStateCopyWith<$Res> {
  _$SortWithStateCopyWithImpl(this._value, this._then);

  final SortWithState _value;
  // ignore: unused_field
  final $Res Function(SortWithState) _then;

  @override
  $Res call({
    Object sortWith = freezed,
  }) {
    return _then(_value.copyWith(
      sortWith: sortWith == freezed ? _value.sortWith : sortWith as SortWith,
    ));
  }
}

/// @nodoc
abstract class _$SortWithStateCopyWith<$Res>
    implements $SortWithStateCopyWith<$Res> {
  factory _$SortWithStateCopyWith(
          _SortWithState value, $Res Function(_SortWithState) then) =
      __$SortWithStateCopyWithImpl<$Res>;
  @override
  $Res call({SortWith sortWith});
}

/// @nodoc
class __$SortWithStateCopyWithImpl<$Res>
    extends _$SortWithStateCopyWithImpl<$Res>
    implements _$SortWithStateCopyWith<$Res> {
  __$SortWithStateCopyWithImpl(
      _SortWithState _value, $Res Function(_SortWithState) _then)
      : super(_value, (v) => _then(v as _SortWithState));

  @override
  _SortWithState get _value => super._value as _SortWithState;

  @override
  $Res call({
    Object sortWith = freezed,
  }) {
    return _then(_SortWithState(
      sortWith: sortWith == freezed ? _value.sortWith : sortWith as SortWith,
    ));
  }
}

/// @nodoc
class _$_SortWithState implements _SortWithState {
  const _$_SortWithState({@required this.sortWith}) : assert(sortWith != null);

  @override
  final SortWith sortWith;

  @override
  String toString() {
    return 'SortWithState(sortWith: $sortWith)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SortWithState &&
            (identical(other.sortWith, sortWith) ||
                const DeepCollectionEquality()
                    .equals(other.sortWith, sortWith)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(sortWith);

  @override
  _$SortWithStateCopyWith<_SortWithState> get copyWith =>
      __$SortWithStateCopyWithImpl<_SortWithState>(this, _$identity);
}

abstract class _SortWithState implements SortWithState {
  const factory _SortWithState({@required SortWith sortWith}) =
      _$_SortWithState;

  @override
  SortWith get sortWith;
  @override
  _$SortWithStateCopyWith<_SortWithState> get copyWith;
}
