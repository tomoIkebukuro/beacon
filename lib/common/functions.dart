import 'dart:math';

import 'package:beacon_sns/repository/server.dart';
import 'package:beacon_sns/widgets/custom_dialog.dart';
import 'package:flutter/material.dart';

Future<void> showCustomDialog(
    {@required BuildContext context,
    @required String title,
    @required String discription}) async {
  return showDialog<void>(
    context: context,
    builder: (context) {
      return CustomDialog(
        title: title,
        discription: discription,
      );
    },
  );
}

int getLatitudeAddress({
  @required double latitude,
  @required int level,
}) {
  return (latitude / 180 * (pi * earthRadius / pow(10, level).floor()).floor())
      .floor();
}

int getLongitudeAddress({
  @required double longitude,
  @required int level,
}) {
  return (longitude /
          360 *
          (2 * pi * earthRadius / pow(10, level).floor()).floor())
      .floor();
}
