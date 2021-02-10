import 'package:beacon_sns/class/favorite/favorite.dart';
import 'package:beacon_sns/class/thread/thread.dart';
import 'package:beacon_sns/common/functions.dart';
import 'package:beacon_sns/pages/setting/setting_page.dart';
import 'package:beacon_sns/repository/server.dart';
import 'package:beacon_sns/widgets/custom_tile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoritePage extends StatefulWidget {
  @override
  _FavoritePageState createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    final threads=context.watch<Favorite>().threads;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.settings),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute<SettingPage>(
                  builder: (context) => SettingPage()));
            },
          ),
          SizedBox(
            width: 10,
          ),
        ],
        title: Text(
          'お気に入り',
        ),
      ),
      body: ListView.builder(
        itemCount: threads.length ,
        itemBuilder: (context, index) {
          return CustomThreadTile(threads[index]);
        },
      ),
    );
  }
}
