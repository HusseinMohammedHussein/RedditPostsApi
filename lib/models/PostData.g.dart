// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PostData.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostData _$PostDataFromJson(Map<String, dynamic> json) => PostData(
      json['after'],
      json['dist'] as int?,
      json['modhash'],
      json['geo_filter'],
      (json['children'] as List<dynamic>)
          .map((e) => Children.fromJson(e as Map<String, dynamic>))
          .toList(),
    )..before = json['before'];

Map<String, dynamic> _$PostDataToJson(PostData instance) => <String, dynamic>{
      'after': instance.after,
      'before': instance.before,
      'dist': instance.dist,
      'modhash': instance.modHash,
      'geo_filter': instance.geoFilter,
      'children': instance.children,
    };
