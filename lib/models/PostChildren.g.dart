// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'PostChildren.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PostChildren _$PostChildrenFromJson(Map<String, dynamic> json) => PostChildren(
      json['kind'] as String?,
      json['data'] == null
          ? null
          : ChildrenData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostChildrenToJson(PostChildren instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'data': instance.data,
    };
