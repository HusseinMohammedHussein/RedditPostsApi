// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Children.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Children _$ChildrenFromJson(Map<String, dynamic> json) => Children(
      json['kind'],
      ChildrenData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ChildrenToJson(Children instance) => <String, dynamic>{
      'kind': instance.kind,
      'data': instance.data,
    };
