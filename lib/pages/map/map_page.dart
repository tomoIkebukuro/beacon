import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [

          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {},
          ),
          SizedBox(width: 10,),
        ],
        title: Text(
          '地図',
        ),
      ),
    );
  }
}
