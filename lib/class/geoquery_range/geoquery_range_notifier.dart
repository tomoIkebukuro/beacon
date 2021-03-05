import 'package:state_notifier/state_notifier.dart';

import 'geoquery_range_state.dart';

class GeoqueryRangeNotifier extends StateNotifier<GeoqueryRangeState> {
  GeoqueryRangeNotifier()
      : super(GeoqueryRangeState(
            level: 2, symbol: GeoqueryRangeNotifier.allSymbol[2]));
  static const allSymbol = [
    '1m',
    '10m',
    '100m',
    '1km',
    '10km',
    '100km',
    '1000km',
    '10000km',
    'null',
  ];

  static const availableSymbol = [
    '100m',
    '1km',
    '10km',
    '100km',
    '1000km',
    '10000km',
    'null',
  ];

  void update({
    String symbol,
  }) {
    if(symbol==state.symbol){
      return;
    }
    final index = GeoqueryRangeNotifier.allSymbol
        .indexWhere((element) => element == symbol);
    if (index < 0) {
      return;
    }
    state = state.copyWith(level: index, symbol: symbol);
  }
}
