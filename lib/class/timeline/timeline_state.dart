import 'dart:math';

import 'package:beacon_sns/class/profile/profile.dart';
import 'package:beacon_sns/class/thread/thread.dart';
import 'package:beacon_sns/repository/server.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'timeline_state.freezed.dart';

@freezed
abstract class TimelineState with _$TimelineState {
  const factory TimelineState({
    @Default(<Thread>[]) List<Thread> threads,
  }) = _TimelineState;
}
