import 'package:beacon_sns/class/favorite/favorite.dart';
import 'package:beacon_sns/class/index.dart';
import 'package:beacon_sns/common/functions.dart';
import 'package:beacon_sns/pages/set_thread/set_thread_page.dart';
import 'package:beacon_sns/repository/server.dart';
import 'package:beacon_sns/widgets/custom_tile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TimelinePage extends StatefulWidget {
  @override
  _TimelinePageState createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(icon: Icon(Icons.refresh), onPressed: (){}),
          SizedBox(width: 10,),
          /*
          FlatButton(
              child: Text(
                '周辺を探索',
                style: TextStyle(
                    color: Colors.deepOrange, fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
            ),
           */
        ],
        title: SizedBox(
          child: SvgPicture.asset(
            'assets/beacon1.svg',
            color: Colors.deepOrange,
          ),
          height: 30,
          width: 30,
        ),
        /*
        const Text(
          'タイムライン',
        ),
         */
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push<SetThreadPage>(
            MaterialPageRoute(
              builder: (_) => SetThreadPage.wrapped(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: serverRepository.threadsStream,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.none ||
              snapshot.hasError) {
            showCustomDialog(
              context: context,
              title: 'エラー',
              discription: 'サーバーに接続できません。',
            );
            return Container();
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Container();
          }
          return ListView.builder(
            itemCount: snapshot.data.docs.length + 1,
            itemBuilder: (context, index) {
              if (index == 0) {
                return Container(
                  color: Colors.white,
                  child: Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Material(
                          color: Colors.white,
                          child: IconButton(
                            icon: Icon(
                              Icons.zoom_out,
                              color: Colors.deepOrange,
                            ),
                            onPressed: () {},
                          ),
                        ),
                        Container(
                          width: 100,
                          child: Center(child: Text('100km圏内')),
                        ),
                        Material(
                          color: Colors.white,
                          child: IconButton(
                            icon: Icon(
                              Icons.zoom_in,
                              color: Colors.deepOrange,
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }
              final thread =
                  Thread.fromJson(snapshot.data.docs[index - 1].data());
              return CustomThreadTile(thread);
            },
          );
        },
      ),
    );
  }
}
