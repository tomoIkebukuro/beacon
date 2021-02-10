import 'dart:io';
import 'package:beacon_sns/class/profile/profile.dart';
import 'package:beacon_sns/class/thread/thread.dart';
import 'package:beacon_sns/common/global_value.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:uuid/uuid.dart';

final serverRepository = ServerRepository();

class ServerRepository {
  final threadsStream =
      FirebaseFirestore.instance.collection('threads').snapshots();

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

  Future<Thread> getThread({String id})async{
    return Thread.fromJson(await get(id: id,path: 'threads'));
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

  Future<void> deleteProfile()async{
    await delete(id:userProfile.id,path:'profiles',);
    userProfile=null;
  }

  Future<String> putFile({File file, String id}) async {
    id ??= Uuid().v4();
    return (await FirebaseStorage.instance.ref(id).putFile(file))
        .ref
        .getDownloadURL();
  }

  Stream<QuerySnapshot> getFavoriteThreadsStream({List<String> favorites}) {
    if((favorites??[]).isEmpty){
      return threadsStream;
    }
    return FirebaseFirestore.instance
        .collection('threads')
        .where('id', arrayContainsAny: favorites)
        .snapshots();
  }
}
