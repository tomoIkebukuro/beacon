import 'package:state_notifier/state_notifier.dart';

import 'geoquery_range_state.dart';

class GeoqueryRangeNotifier extends StateNotifier<GeoqueryRangeState> {
  GeoqueryRangeNotifier() : super(const GeoqueryRangeState());

  void updateLevel({int level}) {
    state=state.copyWith(level:level);
  }
}
