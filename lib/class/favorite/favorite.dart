import 'package:beacon_sns/class/thread/thread.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'favorite.freezed.dart';

@freezed
abstract class Favorite with _$Favorite {
  const factory Favorite({
    @Default(<Thread>[]) List<Thread> threads,
    String command,
    String id,
  }) = _Favorite;
}
