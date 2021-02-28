// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'timeline_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TimelineStateTearOff {
  const _$TimelineStateTearOff();

// ignore: unused_element
  _TimelineState call({List<Thread> threads = const <Thread>[]}) {
    return _TimelineState(
      threads: threads,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TimelineState = _$TimelineStateTearOff();

/// @nodoc
mixin _$TimelineState {
  List<Thread> get threads;

  $TimelineStateCopyWith<TimelineState> get copyWith;
}

/// @nodoc
abstract class $TimelineStateCopyWith<$Res> {
  factory $TimelineStateCopyWith(
          TimelineState value, $Res Function(TimelineState) then) =
      _$TimelineStateCopyWithImpl<$Res>;
  $Res call({List<Thread> threads});
}

/// @nodoc
class _$TimelineStateCopyWithImpl<$Res>
    implements $TimelineStateCopyWith<$Res> {
  _$TimelineStateCopyWithImpl(this._value, this._then);

  final TimelineState _value;
  // ignore: unused_field
  final $Res Function(TimelineState) _then;

  @override
  $Res call({
    Object threads = freezed,
  }) {
    return _then(_value.copyWith(
      threads: threads == freezed ? _value.threads : threads as List<Thread>,
    ));
  }
}

/// @nodoc
abstract class _$TimelineStateCopyWith<$Res>
    implements $TimelineStateCopyWith<$Res> {
  factory _$TimelineStateCopyWith(
          _TimelineState value, $Res Function(_TimelineState) then) =
      __$TimelineStateCopyWithImpl<$Res>;
  @override
  $Res call({List<Thread> threads});
}

/// @nodoc
class __$TimelineStateCopyWithImpl<$Res>
    extends _$TimelineStateCopyWithImpl<$Res>
    implements _$TimelineStateCopyWith<$Res> {
  __$TimelineStateCopyWithImpl(
      _TimelineState _value, $Res Function(_TimelineState) _then)
      : super(_value, (v) => _then(v as _TimelineState));

  @override
  _TimelineState get _value => super._value as _TimelineState;

  @override
  $Res call({
    Object threads = freezed,
  }) {
    return _then(_TimelineState(
      threads: threads == freezed ? _value.threads : threads as List<Thread>,
    ));
  }
}

/// @nodoc
class _$_TimelineState implements _TimelineState {
  const _$_TimelineState({this.threads = const <Thread>[]})
      : assert(threads != null);

  @JsonKey(defaultValue: const <Thread>[])
  @override
  final List<Thread> threads;

  @override
  String toString() {
    return 'TimelineState(threads: $threads)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TimelineState &&
            (identical(other.threads, threads) ||
                const DeepCollectionEquality().equals(other.threads, threads)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(threads);

  @override
  _$TimelineStateCopyWith<_TimelineState> get copyWith =>
      __$TimelineStateCopyWithImpl<_TimelineState>(this, _$identity);
}

abstract class _TimelineState implements TimelineState {
  const factory _TimelineState({List<Thread> threads}) = _$_TimelineState;

  @override
  List<Thread> get threads;
  @override
  _$TimelineStateCopyWith<_TimelineState> get copyWith;
}
