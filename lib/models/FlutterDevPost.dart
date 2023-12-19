
import 'package:json_annotation/json_annotation.dart';
import 'PostData.dart';

part 'FlutterDevPost.g.dart';

@JsonSerializable()
class FlutterDevPost {
  @JsonKey(name: "kind")
  String kind;
  @JsonKey(name: "data")
  PostData data;

  FlutterDevPost(this.data, this.kind);

  factory FlutterDevPost.fromJson(Map<String, dynamic> json) =>
      _$FlutterDevPostFromJson(json);

  Map<String, dynamic> toJson() => _$FlutterDevPostToJson(this);
}