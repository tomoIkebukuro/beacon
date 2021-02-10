import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    this.title,
    this.discription,
  });
  final String title;
  final String discription;
  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      title: Text(
        title,
        textAlign: TextAlign.center,
      ),
      titleTextStyle: const TextStyle(
          fontSize: 16, fontWeight: FontWeight.w700, color: Color(0xFF4f4f4f)),
      titlePadding: const EdgeInsets.all(16),
      contentPadding:
          const EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 16),
      children: [
        SizedBox(
          height: 44,
          child: Text(discription,
              style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF4f4f4f))),
        ),
        const SizedBox(
          height: 24,
        ),
        Center(
          child: SizedBox(
            height: 32,
            child: FlatButton(
              child: const Text(
                '閉じる',
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: Colors.white),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              color: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)),
            ),
          ),
        )
      ],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    );
  }
}
