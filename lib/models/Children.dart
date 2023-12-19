import 'package:json_annotation/json_annotation.dart';

import 'ChildrenData.dart';

part 'Children.g.dart';
@JsonSerializable()
class Children {
  @JsonKey(name: "kind")
  dynamic kind;
  @JsonKey(name: "data")
  ChildrenData data;

  Children(this.kind, this.data);

  factory Children.fromJson(Map<String, dynamic> json) =>
      _$ChildrenFromJson(json);

  Map<String, dynamic> toJson() => _$ChildrenToJson(this);
}
