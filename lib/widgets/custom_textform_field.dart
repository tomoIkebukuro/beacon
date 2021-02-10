import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    this.onChanged,
    this.hintText,
    this.maxLength,
    this.maxLines,
    this.intialValue,
  });
  Function(String value) onChanged;
  String hintText;
  String intialValue;
  int maxLength;
  int maxLines;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(32.0, 0, 32.0, 0),
      child: TextFormField(
        onChanged: onChanged,
        decoration: InputDecoration(
          hintText: hintText, // 入力ヒント
        ),
        maxLength: maxLength,
        maxLengthEnforced: true,
        maxLines: maxLines,
        initialValue: intialValue,
        validator: (value) {
          if (value.isEmpty) {
            return '$hintTextを入力してください。';
          }
          if (value.length > maxLength) {
            return '$maxLength字以内にしてください。';
          }
          return null;
        },
      ),
    );
  }
}
