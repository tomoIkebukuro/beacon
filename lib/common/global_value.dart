import 'package:beacon_sns/class/favorite/favorite.dart';
import 'package:beacon_sns/class/profile/profile.dart';
import 'package:beacon_sns/class/thread/thread.dart';

Profile userProfile= Profile();
List<Thread> favorites=[];
double currentLatitude;
double currentLongitude;

enum SortWith{
  createdAt,
  buzz,
}