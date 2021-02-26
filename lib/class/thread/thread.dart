import 'dart:math';

import 'package:beacon_sns/class/profile/profile.dart';
import 'package:beacon_sns/repository/server.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
    @required int level0,
    @required int level1,
    @required int level2,
    @required int level3,
    @required int level4,
    @required int level5,
    @required int level6,
    @required int level7,
    @required int level8,
  }) = _Thread;
  factory Thread.fromJson(Map<String, dynamic> json) => _$ThreadFromJson(json);
  factory Thread.fromLatLong({
    @required String name,
    @required Profile authorProfile,
    @required double longitude,
    @required double latitude,
  }) {
    final id = Uuid().v4();
    final levels = <int>[];
    for (var level = 0; level <= 8; level += 1) {
      levels.add(
          (latitude / 180 * (pi * earthRadius / pow(10, level - 1)))
              .floor());
    }
    return Thread(
      name: name,
      authorProfile: authorProfile,
      id: id,
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
