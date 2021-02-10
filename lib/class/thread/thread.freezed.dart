// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'thread.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
Thread _$ThreadFromJson(Map<String, dynamic> json) {
  return _Thread.fromJson(json);
}

/// @nodoc
class _$ThreadTearOff {
  const _$ThreadTearOff();

// ignore: unused_element
  _Thread call(
      {@required String name,
      @required Profile authorProfile,
      @required String id}) {
    return _Thread(
      name: name,
      authorProfile: authorProfile,
      id: id,
    );
  }

// ignore: unused_element
  Thread fromJson(Map<String, Object> json) {
    return Thread.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $Thread = _$ThreadTearOff();

/// @nodoc
mixin _$Thread {
  String get name;
  Profile get authorProfile;
  String get id;

  Map<String, dynamic> toJson();
  $ThreadCopyWith<Thread> get copyWith;
}

/// @nodoc
abstract class $ThreadCopyWith<$Res> {
  factory $ThreadCopyWith(Thread value, $Res Function(Thread) then) =
      _$ThreadCopyWithImpl<$Res>;
  $Res call({String name, Profile authorProfile, String id});

  $ProfileCopyWith<$Res> get authorProfile;
}

/// @nodoc
class _$ThreadCopyWithImpl<$Res> implements $ThreadCopyWith<$Res> {
  _$ThreadCopyWithImpl(this._value, this._then);

  final Thread _value;
  // ignore: unused_field
  final $Res Function(Thread) _then;

  @override
  $Res call({
    Object name = freezed,
    Object authorProfile = freezed,
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      authorProfile: authorProfile == freezed
          ? _value.authorProfile
          : authorProfile as Profile,
      id: id == freezed ? _value.id : id as String,
    ));
  }

  @override
  $ProfileCopyWith<$Res> get authorProfile {
    if (_value.authorProfile == null) {
      return null;
    }
    return $ProfileCopyWith<$Res>(_value.authorProfile, (value) {
      return _then(_value.copyWith(authorProfile: value));
    });
  }
}

/// @nodoc
abstract class _$ThreadCopyWith<$Res> implements $ThreadCopyWith<$Res> {
  factory _$ThreadCopyWith(_Thread value, $Res Function(_Thread) then) =
      __$ThreadCopyWithImpl<$Res>;
  @override
  $Res call({String name, Profile authorProfile, String id});

  @override
  $ProfileCopyWith<$Res> get authorProfile;
}

/// @nodoc
class __$ThreadCopyWithImpl<$Res> extends _$ThreadCopyWithImpl<$Res>
    implements _$ThreadCopyWith<$Res> {
  __$ThreadCopyWithImpl(_Thread _value, $Res Function(_Thread) _then)
      : super(_value, (v) => _then(v as _Thread));

  @override
  _Thread get _value => super._value as _Thread;

  @override
  $Res call({
    Object name = freezed,
    Object authorProfile = freezed,
    Object id = freezed,
  }) {
    return _then(_Thread(
      name: name == freezed ? _value.name : name as String,
      authorProfile: authorProfile == freezed
          ? _value.authorProfile
          : authorProfile as Profile,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Thread implements _Thread {
  const _$_Thread(
      {@required this.name, @required this.authorProfile, @required this.id})
      : assert(name != null),
        assert(authorProfile != null),
        assert(id != null);

  factory _$_Thread.fromJson(Map<String, dynamic> json) =>
      _$_$_ThreadFromJson(json);

  @override
  final String name;
  @override
  final Profile authorProfile;
  @override
  final String id;

  @override
  String toString() {
    return 'Thread(name: $name, authorProfile: $authorProfile, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Thread &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.authorProfile, authorProfile) ||
                const DeepCollectionEquality()
                    .equals(other.authorProfile, authorProfile)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(authorProfile) ^
      const DeepCollectionEquality().hash(id);

  @override
  _$ThreadCopyWith<_Thread> get copyWith =>
      __$ThreadCopyWithImpl<_Thread>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ThreadToJson(this);
  }
}

abstract class _Thread implements Thread {
  const factory _Thread(
      {@required String name,
      @required Profile authorProfile,
      @required String id}) = _$_Thread;

  factory _Thread.fromJson(Map<String, dynamic> json) = _$_Thread.fromJson;

  @override
  String get name;
  @override
  Profile get authorProfile;
  @override
  String get id;
  @override
  _$ThreadCopyWith<_Thread> get copyWith;
}
