import 'package:beacon_sns/class/thread/thread.dart';
import 'package:state_notifier/state_notifier.dart';

import 'timeline_state.dart';

class TimelineNotifier extends StateNotifier<TimelineState> {
  TimelineNotifier() : super(TimelineState());
  void addThread({Thread thread}) {
    state = state.copyWith(threads: state.threads..add(thread));
  }

  void deleteThread({String id}) {
    state = state.copyWith(
        threads: state.threads..removeWhere((element) => element.id == id));
  }

  void updateTimeline({List<Thread> threads}) {
    state=state.copyWith(threads:threads);
  }
}
