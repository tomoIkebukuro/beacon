// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'thread.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Thread _$_$_ThreadFromJson(Map<String, dynamic> json) {
  return _$_Thread(
    name: json['name'] as String,
    authorProfile: json['authorProfile'] == null
        ? null
        : Profile.fromJson(json['authorProfile'] as Map<String, dynamic>),
    id: json['id'] as String,
    longitude: (json['longitude'] as num)?.toDouble(),
    latitude: (json['latitude'] as num)?.toDouble(),
    createdAt:
        const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
    level0: json['level0'] as String,
    level1: json['level1'] as String,
    level2: json['level2'] as String,
    level3: json['level3'] as String,
    level4: json['level4'] as String,
    level5: json['level5'] as String,
    level6: json['level6'] as String,
    level7: json['level7'] as String,
    level8: json['level8'] as String,
  );
}

Map<String, dynamic> _$_$_ThreadToJson(_$_Thread instance) => <String, dynamic>{
      'name': instance.name,
      'authorProfile': instance.authorProfile?.toJson(),
      'id': instance.id,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'level0': instance.level0,
      'level1': instance.level1,
      'level2': instance.level2,
      'level3': instance.level3,
      'level4': instance.level4,
      'level5': instance.level5,
      'level6': instance.level6,
      'level7': instance.level7,
      'level8': instance.level8,
    };
