import 'package:beacon_sns/class/favorite/favorite.dart';
import 'package:beacon_sns/class/thread/thread.dart';
import 'package:beacon_sns/common/global_value.dart';
import 'package:beacon_sns/pages/favorite/favorite_notifier.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class FavoriteButton extends StatefulWidget {
  FavoriteButton({this.thread});
  Thread thread;
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    isFavorite = ((favorites.firstWhere(
            (thread) => thread.id == widget.thread.id,
            orElse: () => null)) !=
        null);
  }

  @override
  Widget build(BuildContext context) {
    final commandTarget = context.watch<Favorite>().id;
    if (widget.thread.id == commandTarget) {
      final String command = context.watch<Favorite>().command;
      if (command == 'add') {
        isFavorite = true;
      } else if (command == 'delete') {
        isFavorite = false;
      }
    }
    if (isFavorite) {
      return IconButton(
        icon: Icon(
          Icons.favorite,
          color: Colors.red,
        ),
        onPressed: () =>
            context.read<FavoriteNotifier>().delete(thread: widget.thread),
      );
    } else {
      return IconButton(
        icon: Icon(Icons.favorite_outline),
        onPressed: () =>
            context.read<FavoriteNotifier>().add(thread: widget.thread),
      );
    }
  }
}
