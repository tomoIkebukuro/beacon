import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomFlatButton extends StatefulWidget {
  CustomFlatButton({this.title});
  String title;
  @override
  _CustomFlatButtonState createState() => _CustomFlatButtonState();
}

class _CustomFlatButtonState extends State<CustomFlatButton> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(onPressed: (){}, child: Text(widget.title),);
  }
}
