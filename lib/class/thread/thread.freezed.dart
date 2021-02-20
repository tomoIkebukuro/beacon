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
      @required String id,
      @required double longitude,
      @required double latitude,
      @required int level1,
      @required int level2,
      @required int level3}) {
    return _Thread(
      name: name,
      authorProfile: authorProfile,
      id: id,
      longitude: longitude,
      latitude: latitude,
      level1: level1,
      level2: level2,
      level3: level3,
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
  double get longitude;
  double get latitude; // -9~9
  int get level1; // -18~18
  int get level2; // -36~36
  int get level3;

  Map<String, dynamic> toJson();
  $ThreadCopyWith<Thread> get copyWith;
}

/// @nodoc
abstract class $ThreadCopyWith<$Res> {
  factory $ThreadCopyWith(Thread value, $Res Function(Thread) then) =
      _$ThreadCopyWithImpl<$Res>;
  $Res call(
      {String name,
      Profile authorProfile,
      String id,
      double longitude,
      double latitude,
      int level1,
      int level2,
      int level3});

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
    Object longitude = freezed,
    Object latitude = freezed,
    Object level1 = freezed,
    Object level2 = freezed,
    Object level3 = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      authorProfile: authorProfile == freezed
          ? _value.authorProfile
          : authorProfile as Profile,
      id: id == freezed ? _value.id : id as String,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      level1: level1 == freezed ? _value.level1 : level1 as int,
      level2: level2 == freezed ? _value.level2 : level2 as int,
      level3: level3 == freezed ? _value.level3 : level3 as int,
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
  $Res call(
      {String name,
      Profile authorProfile,
      String id,
      double longitude,
      double latitude,
      int level1,
      int level2,
      int level3});

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
    Object longitude = freezed,
    Object latitude = freezed,
    Object level1 = freezed,
    Object level2 = freezed,
    Object level3 = freezed,
  }) {
    return _then(_Thread(
      name: name == freezed ? _value.name : name as String,
      authorProfile: authorProfile == freezed
          ? _value.authorProfile
          : authorProfile as Profile,
      id: id == freezed ? _value.id : id as String,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      level1: level1 == freezed ? _value.level1 : level1 as int,
      level2: level2 == freezed ? _value.level2 : level2 as int,
      level3: level3 == freezed ? _value.level3 : level3 as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_Thread implements _Thread {
  const _$_Thread(
      {@required this.name,
      @required this.authorProfile,
      @required this.id,
      @required this.longitude,
      @required this.latitude,
      @required this.level1,
      @required this.level2,
      @required this.level3})
      : assert(name != null),
        assert(authorProfile != null),
        assert(id != null),
        assert(longitude != null),
        assert(latitude != null),
        assert(level1 != null),
        assert(level2 != null),
        assert(level3 != null);

  factory _$_Thread.fromJson(Map<String, dynamic> json) =>
      _$_$_ThreadFromJson(json);

  @override
  final String name;
  @override
  final Profile authorProfile;
  @override
  final String id;
  @override
  final double longitude;
  @override
  final double latitude;
  @override // -9~9
  final int level1;
  @override // -18~18
  final int level2;
  @override // -36~36
  final int level3;

  @override
  String toString() {
    return 'Thread(name: $name, authorProfile: $authorProfile, id: $id, longitude: $longitude, latitude: $latitude, level1: $level1, level2: $level2, level3: $level3)';
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
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.longitude, longitude) ||
                const DeepCollectionEquality()
                    .equals(other.longitude, longitude)) &&
            (identical(other.latitude, latitude) ||
                const DeepCollectionEquality()
                    .equals(other.latitude, latitude)) &&
            (identical(other.level1, level1) ||
                const DeepCollectionEquality().equals(other.level1, level1)) &&
            (identical(other.level2, level2) ||
                const DeepCollectionEquality().equals(other.level2, level2)) &&
            (identical(other.level3, level3) ||
                const DeepCollectionEquality().equals(other.level3, level3)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(authorProfile) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(level1) ^
      const DeepCollectionEquality().hash(level2) ^
      const DeepCollectionEquality().hash(level3);

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
      @required String id,
      @required double longitude,
      @required double latitude,
      @required int level1,
      @required int level2,
      @required int level3}) = _$_Thread;

  factory _Thread.fromJson(Map<String, dynamic> json) = _$_Thread.fromJson;

  @override
  String get name;
  @override
  Profile get authorProfile;
  @override
  String get id;
  @override
  double get longitude;
  @override
  double get latitude;
  @override // -9~9
  int get level1;
  @override // -18~18
  int get level2;
  @override // -36~36
  int get level3;
  @override
  _$ThreadCopyWith<_Thread> get copyWith;
}
