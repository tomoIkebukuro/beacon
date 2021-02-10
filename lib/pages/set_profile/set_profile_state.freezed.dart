// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'set_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SetProfileStateTearOff {
  const _$SetProfileStateTearOff();

// ignore: unused_element
  _SetProfileState call(
      {File file, String name, bool isSaveButtonAvailable = false}) {
    return _SetProfileState(
      file: file,
      name: name,
      isSaveButtonAvailable: isSaveButtonAvailable,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SetProfileState = _$SetProfileStateTearOff();

/// @nodoc
mixin _$SetProfileState {
  File get file;
  String get name;
  bool get isSaveButtonAvailable;

  $SetProfileStateCopyWith<SetProfileState> get copyWith;
}

/// @nodoc
abstract class $SetProfileStateCopyWith<$Res> {
  factory $SetProfileStateCopyWith(
          SetProfileState value, $Res Function(SetProfileState) then) =
      _$SetProfileStateCopyWithImpl<$Res>;
  $Res call({File file, String name, bool isSaveButtonAvailable});
}

/// @nodoc
class _$SetProfileStateCopyWithImpl<$Res>
    implements $SetProfileStateCopyWith<$Res> {
  _$SetProfileStateCopyWithImpl(this._value, this._then);

  final SetProfileState _value;
  // ignore: unused_field
  final $Res Function(SetProfileState) _then;

  @override
  $Res call({
    Object file = freezed,
    Object name = freezed,
    Object isSaveButtonAvailable = freezed,
  }) {
    return _then(_value.copyWith(
      file: file == freezed ? _value.file : file as File,
      name: name == freezed ? _value.name : name as String,
      isSaveButtonAvailable: isSaveButtonAvailable == freezed
          ? _value.isSaveButtonAvailable
          : isSaveButtonAvailable as bool,
    ));
  }
}

/// @nodoc
abstract class _$SetProfileStateCopyWith<$Res>
    implements $SetProfileStateCopyWith<$Res> {
  factory _$SetProfileStateCopyWith(
          _SetProfileState value, $Res Function(_SetProfileState) then) =
      __$SetProfileStateCopyWithImpl<$Res>;
  @override
  $Res call({File file, String name, bool isSaveButtonAvailable});
}

/// @nodoc
class __$SetProfileStateCopyWithImpl<$Res>
    extends _$SetProfileStateCopyWithImpl<$Res>
    implements _$SetProfileStateCopyWith<$Res> {
  __$SetProfileStateCopyWithImpl(
      _SetProfileState _value, $Res Function(_SetProfileState) _then)
      : super(_value, (v) => _then(v as _SetProfileState));

  @override
  _SetProfileState get _value => super._value as _SetProfileState;

  @override
  $Res call({
    Object file = freezed,
    Object name = freezed,
    Object isSaveButtonAvailable = freezed,
  }) {
    return _then(_SetProfileState(
      file: file == freezed ? _value.file : file as File,
      name: name == freezed ? _value.name : name as String,
      isSaveButtonAvailable: isSaveButtonAvailable == freezed
          ? _value.isSaveButtonAvailable
          : isSaveButtonAvailable as bool,
    ));
  }
}

/// @nodoc
class _$_SetProfileState implements _SetProfileState {
  const _$_SetProfileState(
      {this.file, this.name, this.isSaveButtonAvailable = false})
      : assert(isSaveButtonAvailable != null);

  @override
  final File file;
  @override
  final String name;
  @JsonKey(defaultValue: false)
  @override
  final bool isSaveButtonAvailable;

  @override
  String toString() {
    return 'SetProfileState(file: $file, name: $name, isSaveButtonAvailable: $isSaveButtonAvailable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SetProfileState &&
            (identical(other.file, file) ||
                const DeepCollectionEquality().equals(other.file, file)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.isSaveButtonAvailable, isSaveButtonAvailable) ||
                const DeepCollectionEquality().equals(
                    other.isSaveButtonAvailable, isSaveButtonAvailable)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(file) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(isSaveButtonAvailable);

  @override
  _$SetProfileStateCopyWith<_SetProfileState> get copyWith =>
      __$SetProfileStateCopyWithImpl<_SetProfileState>(this, _$identity);
}

abstract class _SetProfileState implements SetProfileState {
  const factory _SetProfileState(
      {File file,
      String name,
      bool isSaveButtonAvailable}) = _$_SetProfileState;

  @override
  File get file;
  @override
  String get name;
  @override
  bool get isSaveButtonAvailable;
  @override
  _$SetProfileStateCopyWith<_SetProfileState> get copyWith;
}
