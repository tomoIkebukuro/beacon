// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'set_thread_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SetThreadStateTearOff {
  const _$SetThreadStateTearOff();

// ignore: unused_element
  _SetThreadState call(
      {File file, String name, bool isSetButtonAvailable = false}) {
    return _SetThreadState(
      file: file,
      name: name,
      isSetButtonAvailable: isSetButtonAvailable,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetThreadState = _$SetThreadStateTearOff();

/// @nodoc
mixin _$SetThreadState {
  File get file;
  String get name;
  bool get isSetButtonAvailable;

  $SetThreadStateCopyWith<SetThreadState> get copyWith;
}

/// @nodoc
abstract class $SetThreadStateCopyWith<$Res> {
  factory $SetThreadStateCopyWith(
          SetThreadState value, $Res Function(SetThreadState) then) =
      _$SetThreadStateCopyWithImpl<$Res>;
  $Res call({File file, String name, bool isSetButtonAvailable});
}

/// @nodoc
class _$SetThreadStateCopyWithImpl<$Res>
    implements $SetThreadStateCopyWith<$Res> {
  _$SetThreadStateCopyWithImpl(this._value, this._then);

  final SetThreadState _value;
  // ignore: unused_field
  final $Res Function(SetThreadState) _then;

  @override
  $Res call({
    Object file = freezed,
    Object name = freezed,
    Object isSetButtonAvailable = freezed,
  }) {
    return _then(_value.copyWith(
      file: file == freezed ? _value.file : file as File,
      name: name == freezed ? _value.name : name as String,
      isSetButtonAvailable: isSetButtonAvailable == freezed
          ? _value.isSetButtonAvailable
          : isSetButtonAvailable as bool,
    ));
  }
}

/// @nodoc
abstract class _$SetThreadStateCopyWith<$Res>
    implements $SetThreadStateCopyWith<$Res> {
  factory _$SetThreadStateCopyWith(
          _SetThreadState value, $Res Function(_SetThreadState) then) =
      __$SetThreadStateCopyWithImpl<$Res>;
  @override
  $Res call({File file, String name, bool isSetButtonAvailable});
}

/// @nodoc
class __$SetThreadStateCopyWithImpl<$Res>
    extends _$SetThreadStateCopyWithImpl<$Res>
    implements _$SetThreadStateCopyWith<$Res> {
  __$SetThreadStateCopyWithImpl(
      _SetThreadState _value, $Res Function(_SetThreadState) _then)
      : super(_value, (v) => _then(v as _SetThreadState));

  @override
  _SetThreadState get _value => super._value as _SetThreadState;

  @override
  $Res call({
    Object file = freezed,
    Object name = freezed,
    Object isSetButtonAvailable = freezed,
  }) {
    return _then(_SetThreadState(
      file: file == freezed ? _value.file : file as File,
      name: name == freezed ? _value.name : name as String,
      isSetButtonAvailable: isSetButtonAvailable == freezed
          ? _value.isSetButtonAvailable
          : isSetButtonAvailable as bool,
    ));
  }
}

/// @nodoc
class _$_SetThreadState implements _SetThreadState {
  const _$_SetThreadState(
      {this.file, this.name, this.isSetButtonAvailable = false})
      : assert(isSetButtonAvailable != null);

  @override
  final File file;
  @override
  final String name;
  @JsonKey(defaultValue: false)
  @override
  final bool isSetButtonAvailable;

  @override
  String toString() {
    return 'SetThreadState(file: $file, name: $name, isSetButtonAvailable: $isSetButtonAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetThreadState &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.isSetButtonAvailable, isSetButtonAvailable) ||
                const DeepCollectionEquality()
                    .equals(other.isSetButtonAvailable, isSetButtonAvailable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(file) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(isSetButtonAvailable);

  @override
  _$SetThreadStateCopyWith<_SetThreadState> get copyWith =>
      __$SetThreadStateCopyWithImpl<_SetThreadState>(this, _$identity);
}

abstract class _SetThreadState implements SetThreadState {
  const factory _SetThreadState(
      {File file, String name, bool isSetButtonAvailable}) = _$_SetThreadState;

  @override
  File get file;
  @override
  String get name;
  @override
  bool get isSetButtonAvailable;
  @override
  _$SetThreadStateCopyWith<_SetThreadState> get copyWith;
}
