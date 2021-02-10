import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget CustomAvatar({String url, File file, @required double size}) {
  Widget image;
  if (file != null) {
    image = Image.file(
      file,
      height: size,
      width: size,
      fit: BoxFit.cover,
    );
  } else {
    if (url == null) {
      image= Image.asset(
        'assets/default_avatar.jpg',
        height: size,
        width: size,
        fit: BoxFit.cover,
      );
    } else {
      image= CachedNetworkImage(
        height: size,
        width: size,
        fit: BoxFit.cover,
        imageUrl: url,
        errorWidget: (context, url, dynamic error) => const Icon(Icons.error),
      );
    }
  }
  return SizedBox(
    height: size,
    width: size,
    child: ClipOval(
      child: image,
    ),
  );
}
