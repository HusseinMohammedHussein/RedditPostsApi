import 'package:json_annotation/json_annotation.dart';

import 'ChildrenData.dart';

part 'PostChildren.g.dart';
@JsonSerializable()
class PostChildren {
  @JsonKey(name: "kind")
  String? kind;
  @JsonKey(name: "data")
  ChildrenData? data;

  PostChildren(this.kind, this.data);

  factory PostChildren.fromJson(Map<String, dynamic> json) =>
      _$PostChildrenFromJson(json);

  Map<String, dynamic> toJson() => _$PostChildrenToJson(this);
}