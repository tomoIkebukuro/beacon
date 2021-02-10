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
  );
}

Map<String, dynamic> _$_$_ThreadToJson(_$_Thread instance) => <String, dynamic>{
      'name': instance.name,
      'authorProfile': instance.authorProfile?.toJson(),
      'id': instance.id,
    };
