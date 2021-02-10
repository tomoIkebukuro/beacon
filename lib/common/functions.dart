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
