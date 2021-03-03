import 'dart:async';

import 'package:beacon_sns/class/geoquery_range/geoquery_range_notifier.dart';
import 'package:beacon_sns/class/index.dart';
import 'package:beacon_sns/class/timeline/timeline_state.dart';
import 'package:beacon_sns/common/functions.dart';
import 'package:beacon_sns/common/global_value.dart';
import 'package:beacon_sns/pages/set_thread/set_thread_page.dart';
import 'package:beacon_sns/providers.dart';
import 'package:beacon_sns/repository/server.dart';
import 'package:beacon_sns/widgets/custom_tile.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:riverpod/riverpod.dart';

class TimelinePage extends StatefulWidget {
  @override
  _TimelinePageState createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  final _refreshController = RefreshController(initialRefresh: false);

  void _onRefresh() async {
    // monitor network fetch
    await Future<void>.delayed(Duration(milliseconds: 1000));
    // if failed,use refreshFailed()
    _refreshController.refreshCompleted();
  }

  void _onLoading() async {
    // monitor network fetch
    await Future<void>.delayed(Duration(milliseconds: 1000));
    // if failed,use loadFailed(),if no data return,use LoadNodata()
    //items.add((items.length+1).toString());
    if (mounted) setState(() {});
    _refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              _refreshController.requestRefresh();
            },
          ),
          SizedBox(
            width: 10,
          ),
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
      body: SmartRefresher(
        enablePullUp: false,
        enablePullDown: true,
        header: const ClassicHeader(
          refreshingText: '周辺を探索中...',
          completeText: '探索完了',
          releaseText: '探索する',
          idleText: '探索する',
        ),
        controller: _refreshController,
        onRefresh: _onRefresh,
        onLoading: _onLoading,
        child: Consumer(
          builder: (context, watch, child) {
            final threads = watch(timelineProvider).state.threads;
            return ListView.builder(
              itemCount: threads.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Container(
                    color: Colors.white,
                    child: Center(
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text('範囲：'),
                          Consumer(
                            builder: (context, watch, child) {
                              return DropdownButton<String>(
                                value:
                                    watch(geoQueryRangeProvider.state).symbol,
                                icon: Icon(Icons.arrow_drop_down),
                                iconSize: 24,
                                elevation: 16,
                                //style: TextStyle(color: Colors.deepPurple),
                                underline: Container(
                                  height: 2,
                                  color: Colors.deepOrange,
                                ),
                                onChanged: (String newValue) async {
                                  final level = context
                                      .read(geoQueryRangeProvider.state)
                                      .level;
                                  try{
                                    await context.read(timelineProvider).update(
                                      currentLatitude: currentLatitude,
                                      currentLongitude: currentLongitude,
                                      level: level,
                                      sortWith: SortWith.buzz,
                                    );
                                  }
                                  catch(e){
                                  }

                                  await context
                                      .read(geoQueryRangeProvider)
                                      .update(symbol: newValue);
                                },
                                items: GeoqueryRangeNotifier.availableSymbol
                                    .map<DropdownMenuItem<String>>(
                                        (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              );
                            },
                          ),
                          Text('   並び順：'),
                          Consumer(
                            builder: (context, watch, child) {
                              return DropdownButton<String>(
                                value:
                                '評価順',
                                icon: Icon(Icons.arrow_drop_down),
                                iconSize: 24,
                                elevation: 16,
                                //style: TextStyle(color: Colors.deepPurple),
                                underline: Container(
                                  height: 2,
                                  color: Colors.deepOrange,
                                ),
                                onChanged: (String newValue) async {
                                },
                                items: ['評価順','新しい順']
                                    .map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value,style: TextStyle(fontSize: 15),),
                                      );
                                    }).toList(),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                }
                return CustomThreadTile(threads[index - 1]);
              },
            );
          },
        ),
      ),
    );
  }
}
