import 'dart:math';

import 'package:beacon_sns/class/favorite/favorite.dart';
import 'package:beacon_sns/class/profile/profile.dart';
import 'package:beacon_sns/class/thread/thread.dart';
import 'package:beacon_sns/pages/profile/profile_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/widgets.dart';
import 'custom_avatar.dart';
import 'favorite_button.dart';

class CustomThreadTile extends StatelessWidget {
  CustomThreadTile(this.thread);
  Thread thread;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey, width: 0),
        ),
      ),
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            child: CustomAvatar(url: thread.authorProfile.avatarUrl, size: 50),
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute<ProfilePage>(
                  builder: (_) => ProfilePage(thread.authorProfile)));
            },
          ),
          const SizedBox(
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
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                Flexible(child: Text(thread.name)),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: const [
                              InkWell(
                                child: Icon(
                                  Icons.comment_outlined,
                                  color: Colors.deepOrange,
                                ),
                              ),
                              Text('100'),
                            ],
                            mainAxisSize: MainAxisSize.min,
                          ),
                          Row(
                            children: [
                              const InkWell(
                                child: FaIcon(
                                  FontAwesomeIcons.fire,
                                  color: Colors.deepOrange,
                                  size: 18,
                                ),
                              ),
                              Text(Random().nextInt(100) % 2 == 0
                                  ? '1.2K'
                                  : '100'),
                            ],
                            mainAxisSize: MainAxisSize.min,
                          ),
                          FavoriteButton(
                            thread: thread,
                            iconColor: Colors.deepOrange,
                          ),
                          Row(
                            children: const [
                              InkWell(
                                child: Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.deepOrange,
                                ),
                              ),
                            ],
                            mainAxisSize: MainAxisSize.min,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
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
  }
}
