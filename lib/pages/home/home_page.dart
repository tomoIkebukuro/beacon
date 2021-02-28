import 'package:beacon_sns/class/favorite/favorite.dart';
import 'package:beacon_sns/class/timeline/timeline_notifier.dart';
import 'package:beacon_sns/class/timeline/timeline_state.dart';
import 'package:beacon_sns/common/global_value.dart';
import 'package:beacon_sns/pages/favorite/favorite_notifier.dart';
import 'package:beacon_sns/pages/favorite/favorite_page.dart';
import 'package:beacon_sns/pages/home/home_state.dart';
import 'package:beacon_sns/pages/map/map_page.dart';
import 'package:beacon_sns/pages/profile/profile_page.dart';
import 'package:beacon_sns/pages/timeline/timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:provider/provider.dart';

import 'home_notifier.dart';

class HomePage extends StatefulWidget {
  static Widget wrapped() {
    return MultiProvider(
      providers: [
        StateNotifierProvider<HomeNotifier, HomeState>(
          create: (context) => HomeNotifier(),
        ),
        StateNotifierProvider<FavoriteNotifier, Favorite>(
          create: (context) => FavoriteNotifier(threads: favorites),
        ),
        StateNotifierProvider<TimelineNotifier,TimelineState>(
          create: (context) => TimelineNotifier(),
        ),
      ],
      child:  HomePage(),
    );
  }
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Widget> bodyList=[
    TimelinePage(),
    MapPage(),
    FavoritePage(),
    ProfilePage(userProfile),
  ];
  @override
  Widget build(BuildContext context) {
    final state=context.watch<HomeState>();
    return Scaffold(
      body: IndexedStack(
        index: state.currentIndex,
        children: bodyList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: state.currentIndex,
        //selectedItemColor: ,
        onTap: (index){
          context.read<HomeNotifier>().onIndexChanged(index);
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.forum_outlined,),
            label: ''
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_on_outlined,),
              label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline,),
            label: ''
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline,),
            label: ''
          ),
        ],
      ),
    );
  }
}
