import 'package:beacon_sns/class/geoquery_range/geoquery_range_notifier.dart';
import 'package:beacon_sns/class/geoquery_range/geoquery_range_state.dart';
import 'package:beacon_sns/class/sort_with/sort_with_notifier.dart';
import 'package:beacon_sns/class/sort_with/sort_with_state.dart';
import 'package:beacon_sns/common/global_value.dart';
import 'package:beacon_sns/repository/server.dart';
import 'package:riverpod/riverpod.dart';

import 'class/sort_with/sort_with.dart';
import 'class/timeline/timeline_notifier.dart';

final geoQueryRangeProvider = StateNotifierProvider(
  (context) => GeoqueryRangeNotifier(),
);

final timelineProvider = StateNotifierProvider(
  (context) => TimelineNotifier(serverRepository: serverRepository),
);

final sortWithProvider = StateNotifierProvider(
    (context) => SortWithNotifier(SortWithState(sortWith: SortWith.buzz)));
