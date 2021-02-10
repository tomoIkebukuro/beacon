import 'package:beacon_sns/class/profile/profile.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'thread.freezed.dart';
part 'thread.g.dart';

@freezed
abstract class Thread with _$Thread {
  const factory Thread({
    @required String name,
    @required Profile authorProfile,
    @required String id,
  }) = _Thread;
  factory Thread.fromJson(Map<String, dynamic> json) => _$ThreadFromJson(json);
}
