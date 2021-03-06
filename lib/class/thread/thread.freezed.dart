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
      @TimestampConverter() DateTime createdAt,
      @required int buzz,
      @required int commentNum,
      @required String level0,
      @required String level1,
      @required String level2,
      @required String level3,
      @required String level4,
      @required String level5,
      @required String level6,
      @required String level7,
      @required String level8}) {
    return _Thread(
      name: name,
      authorProfile: authorProfile,
      id: id,
      longitude: longitude,
      latitude: latitude,
      createdAt: createdAt,
      buzz: buzz,
      commentNum: commentNum,
      level0: level0,
      level1: level1,
      level2: level2,
      level3: level3,
      level4: level4,
      level5: level5,
      level6: level6,
      level7: level7,
      level8: level8,
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
  double get latitude;
  @TimestampConverter()
  DateTime get createdAt;
  int get buzz;
  int get commentNum;
  String get level0;
  String get level1;
  String get level2;
  String get level3;
  String get level4;
  String get level5;
  String get level6;
  String get level7;
  String get level8;

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
      @TimestampConverter() DateTime createdAt,
      int buzz,
      int commentNum,
      String level0,
      String level1,
      String level2,
      String level3,
      String level4,
      String level5,
      String level6,
      String level7,
      String level8});

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
    Object createdAt = freezed,
    Object buzz = freezed,
    Object commentNum = freezed,
    Object level0 = freezed,
    Object level1 = freezed,
    Object level2 = freezed,
    Object level3 = freezed,
    Object level4 = freezed,
    Object level5 = freezed,
    Object level6 = freezed,
    Object level7 = freezed,
    Object level8 = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      authorProfile: authorProfile == freezed
          ? _value.authorProfile
          : authorProfile as Profile,
      id: id == freezed ? _value.id : id as String,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      buzz: buzz == freezed ? _value.buzz : buzz as int,
      commentNum: commentNum == freezed ? _value.commentNum : commentNum as int,
      level0: level0 == freezed ? _value.level0 : level0 as String,
      level1: level1 == freezed ? _value.level1 : level1 as String,
      level2: level2 == freezed ? _value.level2 : level2 as String,
      level3: level3 == freezed ? _value.level3 : level3 as String,
      level4: level4 == freezed ? _value.level4 : level4 as String,
      level5: level5 == freezed ? _value.level5 : level5 as String,
      level6: level6 == freezed ? _value.level6 : level6 as String,
      level7: level7 == freezed ? _value.level7 : level7 as String,
      level8: level8 == freezed ? _value.level8 : level8 as String,
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
      @TimestampConverter() DateTime createdAt,
      int buzz,
      int commentNum,
      String level0,
      String level1,
      String level2,
      String level3,
      String level4,
      String level5,
      String level6,
      String level7,
      String level8});

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
    Object createdAt = freezed,
    Object buzz = freezed,
    Object commentNum = freezed,
    Object level0 = freezed,
    Object level1 = freezed,
    Object level2 = freezed,
    Object level3 = freezed,
    Object level4 = freezed,
    Object level5 = freezed,
    Object level6 = freezed,
    Object level7 = freezed,
    Object level8 = freezed,
  }) {
    return _then(_Thread(
      name: name == freezed ? _value.name : name as String,
      authorProfile: authorProfile == freezed
          ? _value.authorProfile
          : authorProfile as Profile,
      id: id == freezed ? _value.id : id as String,
      longitude: longitude == freezed ? _value.longitude : longitude as double,
      latitude: latitude == freezed ? _value.latitude : latitude as double,
      createdAt:
          createdAt == freezed ? _value.createdAt : createdAt as DateTime,
      buzz: buzz == freezed ? _value.buzz : buzz as int,
      commentNum: commentNum == freezed ? _value.commentNum : commentNum as int,
      level0: level0 == freezed ? _value.level0 : level0 as String,
      level1: level1 == freezed ? _value.level1 : level1 as String,
      level2: level2 == freezed ? _value.level2 : level2 as String,
      level3: level3 == freezed ? _value.level3 : level3 as String,
      level4: level4 == freezed ? _value.level4 : level4 as String,
      level5: level5 == freezed ? _value.level5 : level5 as String,
      level6: level6 == freezed ? _value.level6 : level6 as String,
      level7: level7 == freezed ? _value.level7 : level7 as String,
      level8: level8 == freezed ? _value.level8 : level8 as String,
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
      @TimestampConverter() this.createdAt,
      @required this.buzz,
      @required this.commentNum,
      @required this.level0,
      @required this.level1,
      @required this.level2,
      @required this.level3,
      @required this.level4,
      @required this.level5,
      @required this.level6,
      @required this.level7,
      @required this.level8})
      : assert(name != null),
        assert(authorProfile != null),
        assert(id != null),
        assert(longitude != null),
        assert(latitude != null),
        assert(buzz != null),
        assert(commentNum != null),
        assert(level0 != null),
        assert(level1 != null),
        assert(level2 != null),
        assert(level3 != null),
        assert(level4 != null),
        assert(level5 != null),
        assert(level6 != null),
        assert(level7 != null),
        assert(level8 != null);

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
  @override
  @TimestampConverter()
  final DateTime createdAt;
  @override
  final int buzz;
  @override
  final int commentNum;
  @override
  final String level0;
  @override
  final String level1;
  @override
  final String level2;
  @override
  final String level3;
  @override
  final String level4;
  @override
  final String level5;
  @override
  final String level6;
  @override
  final String level7;
  @override
  final String level8;

  @override
  String toString() {
    return 'Thread(name: $name, authorProfile: $authorProfile, id: $id, longitude: $longitude, latitude: $latitude, createdAt: $createdAt, buzz: $buzz, commentNum: $commentNum, level0: $level0, level1: $level1, level2: $level2, level3: $level3, level4: $level4, level5: $level5, level6: $level6, level7: $level7, level8: $level8)';
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
            (identical(other.createdAt, createdAt) ||
                const DeepCollectionEquality()
                    .equals(other.createdAt, createdAt)) &&
            (identical(other.buzz, buzz) ||
                const DeepCollectionEquality().equals(other.buzz, buzz)) &&
            (identical(other.commentNum, commentNum) ||
                const DeepCollectionEquality()
                    .equals(other.commentNum, commentNum)) &&
            (identical(other.level0, level0) ||
                const DeepCollectionEquality().equals(other.level0, level0)) &&
            (identical(other.level1, level1) ||
                const DeepCollectionEquality().equals(other.level1, level1)) &&
            (identical(other.level2, level2) ||
                const DeepCollectionEquality().equals(other.level2, level2)) &&
            (identical(other.level3, level3) ||
                const DeepCollectionEquality().equals(other.level3, level3)) &&
            (identical(other.level4, level4) ||
                const DeepCollectionEquality().equals(other.level4, level4)) &&
            (identical(other.level5, level5) ||
                const DeepCollectionEquality().equals(other.level5, level5)) &&
            (identical(other.level6, level6) ||
                const DeepCollectionEquality().equals(other.level6, level6)) &&
            (identical(other.level7, level7) ||
                const DeepCollectionEquality().equals(other.level7, level7)) &&
            (identical(other.level8, level8) ||
                const DeepCollectionEquality().equals(other.level8, level8)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(authorProfile) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(longitude) ^
      const DeepCollectionEquality().hash(latitude) ^
      const DeepCollectionEquality().hash(createdAt) ^
      const DeepCollectionEquality().hash(buzz) ^
      const DeepCollectionEquality().hash(commentNum) ^
      const DeepCollectionEquality().hash(level0) ^
      const DeepCollectionEquality().hash(level1) ^
      const DeepCollectionEquality().hash(level2) ^
      const DeepCollectionEquality().hash(level3) ^
      const DeepCollectionEquality().hash(level4) ^
      const DeepCollectionEquality().hash(level5) ^
      const DeepCollectionEquality().hash(level6) ^
      const DeepCollectionEquality().hash(level7) ^
      const DeepCollectionEquality().hash(level8);

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
      @TimestampConverter() DateTime createdAt,
      @required int buzz,
      @required int commentNum,
      @required String level0,
      @required String level1,
      @required String level2,
      @required String level3,
      @required String level4,
      @required String level5,
      @required String level6,
      @required String level7,
      @required String level8}) = _$_Thread;

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
  @override
  @TimestampConverter()
  DateTime get createdAt;
  @override
  int get buzz;
  @override
  int get commentNum;
  @override
  String get level0;
  @override
  String get level1;
  @override
  String get level2;
  @override
  String get level3;
  @override
  String get level4;
  @override
  String get level5;
  @override
  String get level6;
  @override
  String get level7;
  @override
  String get level8;
  @override
  _$ThreadCopyWith<_Thread> get copyWith;
}
