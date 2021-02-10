import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'set_profile_state.freezed.dart';

@freezed
abstract class SetProfileState with _$SetProfileState {
  const factory SetProfileState({
    File file,
    String name,
    @Default(false) bool isSaveButtonAvailable,
  }) = _SetProfileState;
}
