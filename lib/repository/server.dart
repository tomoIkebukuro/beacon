import 'dart:io';
import 'dart:math';
import 'package:beacon_sns/class/profile/profile.dart';
import 'package:beacon_sns/class/thread/thread.dart';
import 'package:beacon_sns/common/functions.dart';
import 'package:beacon_sns/common/global_value.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:uuid/uuid.dart';

final serverRepository = ServerRepository();

const earthRadius = 6378000;
const earthCircumFerence = 40075017;

class ServerRepository {
  final threadsStream = FirebaseFirestore.instance
      .collection('threads')
      .where("latitude", isGreaterThanOrEqualTo: 0)
      .where("latitude", isLessThanOrEqualTo: 90)
      .where('level3', whereIn: <int>[-27, -26, -25, -24])
      .where('tags', arrayContains: 'aaaa')
      .snapshots();

  /*
  final threadsStream = FirebaseFirestore.instance
      .collection('threads')
      .where("latitude", isGreaterThanOrEqualTo: 0)
      .where("latitude", isLessThanOrEqualTo: 90)
      .where("longitude", isGreaterThanOrEqualTo: -180)
      .where("longitude", isLessThanOrEqualTo: 180)
      .snapshots();

   */

  Future<void> set({
    String path,
    String id,
    Map<String, dynamic> data,
  }) async {
    final collection = FirebaseFirestore.instance.collection(path);
    id ??= Uuid().v4();
    return collection.doc(id).set(data);
  }

  Future<Map<String, dynamic>> get({String id, String path}) async {
    return (await FirebaseFirestore.instance.collection(path).doc(id).get())
        .data();
  }

  Future<Thread> getThread({String id}) async {
    return Thread.fromJson(await get(id: id, path: 'threads'));
  }


  Future<List<Thread>> getGeoQuery({
    double latitude,
    double longitude,
    int level,
    @required SortWith sortWith,
  }
  ) async {
    final currentAddress =
        getGeoqueryAddress(latitude: currentLatitude,longitude: currentLongitude,level: level);
    final latitudeRange = <int>[currentAddress];
    for (var i = 0; i < 4; i += 1) {
      latitudeRange..add(currentAddress + i)..add(currentAddress - i);
    }
    //　完璧!!
    final longitudeDiff = (pow(10, level) * 360) /
        (2 * pi * earthRadius * cos(2 * pi * latitude / 360))/2;
    QuerySnapshot query ;
    if(sortWith==SortWith.buzz){
      query= await FirebaseFirestore.instance
          .collection('threads')
          .where("longitude", isGreaterThanOrEqualTo: longitude-longitudeDiff)
          .where("longitude", isLessThanOrEqualTo: longitude+longitudeDiff)
          .where('level$level', whereIn: latitudeRange).orderBy('buzz')
          .limit(20)
          .get();
    }
    else{
      query= await FirebaseFirestore.instance
          .collection('threads')
          .where("longitude", isGreaterThanOrEqualTo: longitude-longitudeDiff)
          .where("longitude", isLessThanOrEqualTo: longitude+longitudeDiff)
          .where('level$level', whereIn: latitudeRange).orderBy('createdAt')
          .limit(20)
          .get();
    }
    final threads = <Thread>[];
    for (final doc in query.docs) {
      threads.add(Thread.fromJson(doc.data()));
    }
    return threads;
  }

  Future<void> delete({String id, String path}) async {
    return FirebaseFirestore.instance.collection(path).doc(id).delete();
  }

  Future<void> deleteAllThread({String path}) async {
    for (var doc
        in (await FirebaseFirestore.instance.collection(path).get()).docs) {
      await doc.reference.delete();
    }
  }

  Future<void> deleteProfile() async {
    await delete(
      id: userProfile.id,
      path: 'profiles',
    );
    userProfile = null;
  }

  Future<String> putFile({File file, String id}) async {
    id ??= Uuid().v4();
    return (await FirebaseStorage.instance.ref(id).putFile(file))
        .ref
        .getDownloadURL();
  }

  Stream<QuerySnapshot> getFavoriteThreadsStream({List<String> favorites}) {
    if ((favorites ?? []).isEmpty) {
      return threadsStream;
    }
    return FirebaseFirestore.instance
        .collection('threads')
        .where('id', arrayContainsAny: favorites)
        .snapshots();
  }
}
