import 'dart:math';

import 'package:beacon_sns/class/profile/profile.dart';
import 'package:beacon_sns/common/functions.dart';
import 'package:beacon_sns/common/global_value.dart';
import 'package:beacon_sns/repository/server.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';

part 'thread.freezed.dart';
part 'thread.g.dart';

@freezed
abstract class Thread with _$Thread {
  const factory Thread({
    @required String name,
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
    @required String level8,
  }) = _Thread;
  factory Thread.fromJson(Map<String, dynamic> json) => _$ThreadFromJson(json);
  factory Thread.fromLatLong({
    @required String name,
    @required Profile authorProfile,
    @required int buzz,
    @required double longitude,
    @required double latitude,
  }) {
    final id = Uuid().v4();
    final levels = <String>[];
    for(int i =0;i<=8;i+=1){
      var latitudeAddress=getLatitudeAddress(latitude: latitude, level: i);
      var longitudeAddress=getLongitudeAddress(longitude: longitude, level: i);
      levels.add('$latitudeAddress''_''$longitudeAddress');
    }
    return Thread(
      name: name,
      authorProfile: authorProfile,
      id: id,
      buzz: buzz,
      commentNum: 0,
      latitude: latitude,
      longitude: longitude,
      level0: levels[0],
      level1: levels[1],
      level2: levels[2],
      level3: levels[3],
      level4: levels[4],
      level5: levels[5],
      level6: levels[6],
      level7: levels[7],
      level8: levels[8],
    );
  }
}

class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
  const TimestampConverter();

  @override
  DateTime fromJson(Timestamp json) => json?.toDate();

  @override
  Timestamp toJson(DateTime object) =>
      object == null ? null : Timestamp.fromDate(object);
}
