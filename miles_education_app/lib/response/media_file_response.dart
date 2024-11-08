import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'media_file_response.g.dart';

@JsonSerializable()
class MediaResponse {
  @JsonKey(name: "data")
  List<MediaResponseData>? data;

  MediaResponse({
    this.data,
  });

  factory MediaResponse.fromJson(Map<String, dynamic> json) =>
      _$MediaResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MediaResponseToJson(this);
}

@JsonSerializable()
class MediaResponseData {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "block_type")
  String? blockType;
  @JsonKey(name: "name")
  String? name;
  @JsonKey(name: "heading")
  String? heading;
  @JsonKey(name: "position")
  int? position;
  @JsonKey(name: "count")
  int? count;
  @JsonKey(name: "active")
  bool? active;
  @JsonKey(name: "created_at")
  String? createdAt;
  @JsonKey(name: "updated_at")
  String? updatedAt;
  @JsonKey(name: "vertical")
  String? vertical;
  @JsonKey(name: "created_by")
  dynamic createdBy;
  @JsonKey(name: "modified_by")
  String? modifiedBy;
  @JsonKey(name: "posts")
  List<Post>? posts;

  MediaResponseData({
    this.id,
    this.blockType,
    this.name,
    this.heading,
    this.position,
    this.count,
    this.active,
    this.createdAt,
    this.updatedAt,
    this.vertical,
    this.createdBy,
    this.modifiedBy,
    this.posts,
  });

  factory MediaResponseData.fromJson(Map<String, dynamic> json) =>
      _$MediaResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$MediaResponseDataToJson(this);
}

@JsonSerializable()
class Post {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "files")
  List<FileElement>? files;
  @JsonKey(name: "liked_by_me")
  bool? likedByMe;
  @JsonKey(name: "title")
  String? title;
  @JsonKey(name: "post_type")
  String? postType;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "metadata")
  String? metadata;
  @JsonKey(name: "full_video_url")
  String? fullVideoUrl;
  @JsonKey(name: "blog_url")
  String? blogUrl;
  @JsonKey(name: "active")
  bool? active;
  @JsonKey(name: "featured")
  bool? featured;
  @JsonKey(name: "priority")
  int? priority;
  @JsonKey(name: "likes")
  int? likes;
  @JsonKey(name: "created_at")
  String? createdAt;
  @JsonKey(name: "updated_at")
  String? updatedAt;
  @JsonKey(name: "created_by")
  String? createdBy;
  @JsonKey(name: "layout")
  String? layout;
  @JsonKey(name: "persona")
  dynamic persona;
  @JsonKey(name: "modified_by")
  String? modifiedBy;

  Post({
    this.id,
    this.files,
    this.likedByMe,
    this.title,
    this.postType,
    this.description,
    this.metadata,
    this.fullVideoUrl,
    this.blogUrl,
    this.active,
    this.featured,
    this.priority,
    this.likes,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.layout,
    this.persona,
    this.modifiedBy,
  });

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}

@JsonSerializable()
class FileElement {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "media_type")
  MediaType? mediaType;
  @JsonKey(name: "video_url")
  String? videoUrl;
  @JsonKey(name: "thumbnail")
  String? thumbnail;
  @JsonKey(name: "image_path")
  String? imagePath;
  @JsonKey(name: "media_order")
  int? mediaOrder;
  @JsonKey(name: "ratio")
  dynamic ratio;
  @JsonKey(name: "active")
  bool? active;
  @JsonKey(name: "post")
  String? post;

  FileElement({
    this.id,
    this.mediaType,
    this.videoUrl,
    this.thumbnail,
    this.imagePath,
    this.mediaOrder,
    this.ratio,
    this.active,
    this.post,
  });

  factory FileElement.fromJson(Map<String, dynamic> json) =>
      _$FileElementFromJson(json);

  Map<String, dynamic> toJson() => _$FileElementToJson(this);
}

enum MediaType {
  @JsonValue("image")
  IMAGE,
  @JsonValue("video")
  VIDEO
}

final mediaTypeValues =
    EnumValues({"image": MediaType.IMAGE, "video": MediaType.VIDEO});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
