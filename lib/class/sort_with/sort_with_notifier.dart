import 'package:beacon_sns/class/sort_with/sort_with.dart';
import 'package:beacon_sns/class/sort_with/sort_with_state.dart';
import 'package:state_notifier/state_notifier.dart';

class SortWithNotifier extends StateNotifier<SortWithState> {
  SortWithNotifier(SortWithState state) : super(state);
  void set(SortWith sortWith) {
    state=state.copyWith(sortWith:sortWith);
    return;
  }
  void orderByBuzz(){
    set(SortWith.buzz);
  }
  void orderByCreatedAt(){
    set(SortWith.createdAt);
  }
}
