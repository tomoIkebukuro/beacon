import 'dart:math';

import 'package:beacon_sns/class/profile/profile.dart';
import 'package:beacon_sns/class/thread/thread.dart';
import 'package:beacon_sns/repository/server.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'geoquery_range_state.freezed.dart';

@freezed
abstract class GeoqueryRangeState with _$GeoqueryRangeState {
  const factory GeoqueryRangeState({
    @Default(8) int level,
  }) = _GeoqueryRangeState;
}
