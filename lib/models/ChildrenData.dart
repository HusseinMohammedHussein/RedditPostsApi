import 'package:json_annotation/json_annotation.dart';

part 'ChildrenData.g.dart';

@JsonSerializable()
class ChildrenData {
  @JsonKey(name: "approved_at_utc")
  dynamic approvedAtUtc;
  @JsonKey(name: "subreddit")
  String? subreddit;
  @JsonKey(name: "selftext")
  String? postBody;
  @JsonKey(name: "author_fullname")
  String? authorFullname;
  @JsonKey(name: "saved")
  bool? saved;
  @JsonKey(name: "mod_reason_title")
  dynamic modReasonTitle;
  @JsonKey(name: "gilded")
  int? gilded;
  @JsonKey(name: "clicked")
  bool? clicked;
  @JsonKey(name: "title")
  String? postTitle;
  @JsonKey(name: "link_flair_richtext")
  List<dynamic>? linkFlairRichtext;
  @JsonKey(name: "subreddit_name_prefixed")
  String? subredditNamePrefixed;
  @JsonKey(name: "hidden")
  bool? hidden;
  @JsonKey(name: "pwls")
  int? pwls;
  @JsonKey(name: "link_flair_css_class")
  String? linkFlairCssClass;
  @JsonKey(name: "downs")
  int? downs;
  @JsonKey(name: "thumbnail_height")
  dynamic thumbnail_height;
  @JsonKey(name: "top_awarded_type")
  dynamic top_awarded_type;
  @JsonKey(name: "hide_score")
  bool? hide_score;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "quarantine")
  bool? quarantine;
  @JsonKey(name: "link_flair_text_color")
  String? link_flair_text_color;
  @JsonKey(name: "upvote_ratio")
  double? upvote_ratio;
  @JsonKey(name: "author_flair_background_color")
  String? author_flair_background_color;
  @JsonKey(name: "subreddit_type")
  String? subreddit_type;
  @JsonKey(name: "ups")
  int? ups;
  @JsonKey(name: "total_awards_received")
  int? total_awards_received;
  @JsonKey(name: "media_embed")
  dynamic media_embed;
  @JsonKey(name: "thumbnail_width")
  dynamic thumbnail_width;
  @JsonKey(name: "author_flair_template_id")
  dynamic author_flair_template_id;
  @JsonKey(name: "is_original_content")
  bool? is_original_content;
  @JsonKey(name: "user_reports")
  List<dynamic>? user_reports;
  @JsonKey(name: "secure_media")
  dynamic secure_media;
  @JsonKey(name: "is_reddit_media_domain")
  bool? is_reddit_media_domain;
  @JsonKey(name: "is_meta")
  bool? is_meta;
  @JsonKey(name: "category")
  dynamic category;
  @JsonKey(name: "secure_media_embed")
  dynamic secure_media_embed;
  @JsonKey(name: "link_flair_text")
  dynamic link_flair_text;
  @JsonKey(name: "can_mod_post")
  bool? can_mod_post;
  @JsonKey(name: "url")
  String? postUrl;


  ChildrenData(
      {
      this.approvedAtUtc,
      this.subreddit,
      this.postBody,
      this.authorFullname,
      this.saved,
      this.modReasonTitle,
      this.gilded,
      this.clicked,
      this.postTitle,
      this.linkFlairRichtext,
      this.subredditNamePrefixed,
      this.hidden,
      this.pwls,
      this.linkFlairCssClass,
      this.downs,
      this.thumbnail_height,
      this.top_awarded_type,
      this.hide_score,
      this.name,
      this.quarantine,
      this.link_flair_text_color,
      this.upvote_ratio,
      this.author_flair_background_color,
      this.subreddit_type,
      this.ups,
      this.total_awards_received,
      this.media_embed,
      this.thumbnail_width,
      this.author_flair_template_id,
      this.is_original_content,
      this.user_reports,
      this.secure_media,
      this.is_reddit_media_domain,
      this.is_meta,
      this.category,
      this.secure_media_embed,
      this.link_flair_text,
      this.can_mod_post,
      this.postUrl});

  factory ChildrenData.fromJson(Map<String, dynamic> json) =>
      _$ChildrenDataFromJson(json);

  Map<String, dynamic> toJson() => _$ChildrenDataToJson(this);
}