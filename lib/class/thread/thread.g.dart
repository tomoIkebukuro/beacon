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
    level1: json['level1'] as int,
    level2: json['level2'] as int,
    level3: json['level3'] as int,
  );
}

Map<String, dynamic> _$_$_ThreadToJson(_$_Thread instance) => <String, dynamic>{
      'name': instance.name,
      'authorProfile': instance.authorProfile?.toJson(),
      'id': instance.id,
      'longitude': instance.longitude,
      'latitude': instance.latitude,
      'level1': instance.level1,
      'level2': instance.level2,
      'level3': instance.level3,
    };
