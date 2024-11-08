import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'testimonial_response.g.dart';

@JsonSerializable()
class TestimonialResponse {
  @JsonKey(name: "message")
  String? message;
  @JsonKey(name: "data")
  List<TestimonialResponseData>? data;

  TestimonialResponse({
    this.message,
    this.data,
  });

  factory TestimonialResponse.fromJson(Map<String, dynamic> json) =>
      _$TestimonialResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TestimonialResponseToJson(this);
}

@JsonSerializable()
class TestimonialResponseData {
  @JsonKey(name: "id")
  String? id;
  @JsonKey(name: "liked_by_me")
  bool? likedByMe;
  @JsonKey(name: "first_name")
  String? firstName;
  @JsonKey(name: "last_name")
  String? lastName;
  @JsonKey(name: "description")
  String? description;
  @JsonKey(name: "image_url")
  String? imageUrl;
  @JsonKey(name: "video_url")
  String? videoUrl;
  @JsonKey(name: "full_video_url")
  dynamic fullVideoUrl;
  @JsonKey(name: "likes")
  int? likes;
  @JsonKey(name: "created_at")
  String? createdAt;
  @JsonKey(name: "updated_at")
  String? updatedAt;
  @JsonKey(name: "created_by")
  String? createdBy;
  @JsonKey(name: "modified_by")
  String? modifiedBy;
  @JsonKey(name: "watched")
  bool? watched;

  TestimonialResponseData({
    this.id,
    this.likedByMe,
    this.firstName,
    this.lastName,
    this.description,
    this.imageUrl,
    this.videoUrl,
    this.fullVideoUrl,
    this.likes,
    this.createdAt,
    this.updatedAt,
    this.createdBy,
    this.modifiedBy,
    this.watched,
  });

  factory TestimonialResponseData.fromJson(Map<String, dynamic> json) =>
      _$TestimonialResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$TestimonialResponseDataToJson(this);
}
