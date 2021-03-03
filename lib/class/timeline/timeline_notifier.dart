import 'package:beacon_sns/class/thread/thread.dart';
import 'package:beacon_sns/common/global_value.dart';
import 'package:beacon_sns/repository/server.dart';
import 'package:flutter/cupertino.dart';
import 'package:state_notifier/state_notifier.dart';

import 'timeline_state.dart';

class TimelineNotifier extends StateNotifier<TimelineState> {
  TimelineNotifier({this.serverRepository}) : super(TimelineState());
  ServerRepository serverRepository;
  void addThread({Thread thread}) {
    state = state.copyWith(threads: state.threads..add(thread));
  }

  void deleteThread({String id}) {
    state = state.copyWith(
        threads: state.threads..removeWhere((element) => element.id == id));
  }

  void set({List<Thread> threads}) {
    state = state.copyWith(threads: threads);
  }

  Future<void> update({
    @required double currentLatitude,
    @required double currentLongitude,
    @required int level,
    @required SortWith sortWith,
  }) async {
    final threads = await serverRepository.getGeoQuery(
      latitude: currentLatitude,
      longitude: currentLongitude,
      level: level,
      sortWith: sortWith,
    );
    if (threads != null) {
      set(threads: threads);
    } else {
      throw Exception('failed to get geoquery');
    }
    return;
  }
}
