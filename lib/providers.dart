import 'package:beacon_sns/class/geoquery_range/geoquery_range_notifier.dart';
import 'package:beacon_sns/class/geoquery_range/geoquery_range_state.dart';
import 'package:beacon_sns/repository/server.dart';
import 'package:riverpod/riverpod.dart';

import 'class/timeline/timeline_notifier.dart';

final geoQueryRangeProvider = StateNotifierProvider(
  (context) => GeoqueryRangeNotifier(),
);

final timelineProvider = StateNotifierProvider(
      (context) => TimelineNotifier(serverRepository: serverRepository),
);

