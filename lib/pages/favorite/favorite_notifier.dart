import 'package:beacon_sns/class/favorite/favorite.dart';
import 'package:beacon_sns/class/thread/thread.dart';
import 'package:beacon_sns/repository/server.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:state_notifier/state_notifier.dart';
import 'dart:convert';

class FavoriteNotifier extends StateNotifier<Favorite> {
  FavoriteNotifier({List<Thread> threads}) : super(const Favorite()) {
    threads??=[];
    /*
    List<Thread> safeThreads=[];
    for(var thread in threads){
      print(thread.id);
      try{
        state = state.copyWith(
          command: 'add',
          id: thread.id,
        );
        safeThreads.add(thread);
      }catch(e){
      }
    }
     */
    state=state.copyWith(threads:threads);
  }
  final prefs = SharedPreferences.getInstance();
  void add({
    @required Thread thread,
  }) async {
    state = state.copyWith(
      command: 'add',
      id: thread.id,
      threads: [...state.threads]..add(thread),
    );
    final favorites = state.threads.map((e) => e.toJson()).toList();
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('favorites', json.encode(favorites));
  }

  void delete({
    @required Thread thread,
  }) async {
    state = state.copyWith(
      threads: [...state.threads]
        ..removeWhere((element) => element.id == thread.id),
      command: 'delete',
      id: thread.id,
    );
    final favorites = state.threads.map((e) => e.toJson()).toList();
    final prefs = await SharedPreferences.getInstance();
    prefs.setString('favorites', json.encode(favorites));
  }
}
