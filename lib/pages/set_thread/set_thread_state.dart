import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'set_thread_state.freezed.dart';

@freezed
abstract class SetThreadState with _$SetThreadState {
  const factory SetThreadState({
    File file,
    String name,
    @Default(false) bool isSetButtonAvailable,
  }) = _SetThreadState;
}
