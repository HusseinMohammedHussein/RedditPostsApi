// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FlutterDevPost.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FlutterDevPost _$FlutterDevPostFromJson(Map<String, dynamic> json) =>
    FlutterDevPost(
      PostData.fromJson(json['data'] as Map<String, dynamic>),
      json['kind'] as String,
    );

Map<String, dynamic> _$FlutterDevPostToJson(FlutterDevPost instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'data': instance.data,
    };
