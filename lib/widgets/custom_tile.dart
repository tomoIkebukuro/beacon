import 'dart:math';

import 'package:beacon_sns/class/favorite/favorite.dart';
import 'package:beacon_sns/class/profile/profile.dart';
import 'package:beacon_sns/class/thread/thread.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_avatar.dart';
import 'favorite_button.dart';



Widget CustomThreadTile(Thread thread) {
  return Container(
    decoration: const BoxDecoration(
      border: Border(
        bottom: BorderSide(color: Colors.grey, width: 0),
      ),
    ),
    padding: EdgeInsets.all(10),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAvatar(url: thread.authorProfile.avatarUrl, size: 50),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                thread.authorProfile.name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Flexible(child: Text(thread.name)),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              child: Icon(Icons.comment_outlined,color: Colors.deepOrange,),
                            ),
                            Text('100'),
                          ],
                          mainAxisSize: MainAxisSize.min,
                        ),
                        Row(
                          children: [
                            InkWell(
                              child: FaIcon(FontAwesomeIcons.fire,color: Colors.deepOrange,size: 18,),
                            ),
                            Text(Random().nextInt(100)%2==0?'1.2K':'100'),
                          ],
                          mainAxisSize: MainAxisSize.min,
                        ),

                        FavoriteButton(thread: thread,iconColor: Colors.deepOrange,),
                        Row(
                          children: [
                            InkWell(
                              child: Icon(Icons.location_on_outlined,color: Colors.deepOrange,),
                            ),
                          ],
                          mainAxisSize: MainAxisSize.min,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
  return ListTile(
    leading: CustomAvatar(url: thread.authorProfile.avatarUrl, size: 100),
    title: Text(thread.authorProfile.name),
    subtitle: Text(thread.name),
    trailing: IconButton(
      icon: const Icon(Icons.more_vert),
      onPressed: () {},
    ),
  );
}
