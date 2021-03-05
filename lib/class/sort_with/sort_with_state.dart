import 'package:beacon_sns/class/sort_with/sort_with.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'sort_with_state.freezed.dart';

@freezed
abstract class SortWithState with _$SortWithState {
  const factory SortWithState({
    @required SortWith sortWith,
  }) = _SortWithState;
}
