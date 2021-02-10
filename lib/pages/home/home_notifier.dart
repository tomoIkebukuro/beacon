
import 'package:state_notifier/state_notifier.dart';

import 'home_state.dart';

class HomeNotifier extends StateNotifier<HomeState> {
  HomeNotifier() : super(const HomeState());

  void onIndexChanged(int index){
    state=state.copyWith(currentIndex:index);
  }
}