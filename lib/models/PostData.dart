import 'package:flutter_assignment/models/Children.dart';
import 'package:flutter_assignment/models/ChildrenData.dart';
import 'package:json_annotation/json_annotation.dart';

part 'PostData.g.dart';

@JsonSerializable()
class PostData {
  @JsonKey(name: "after")
  dynamic after;
  @JsonKey(name: "before")
  dynamic before;
  @JsonKey(name: "dist")
  int? dist;
  @JsonKey(name: "modhash")
  dynamic modHash;
  @JsonKey(name: "geo_filter")
  dynamic geoFilter;
  @JsonKey(name: "children")
  List<Children> children;

  PostData(this.after, this.dist, this.modHash, this.geoFilter, this.children);

  factory PostData.fromJson(Map<String, dynamic> json) =>
      _$PostDataFromJson(json);

  Map<String, dynamic> toJson() => _$PostDataToJson(this);

}