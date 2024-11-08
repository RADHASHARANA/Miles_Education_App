// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'testimonial_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TestimonialResponse _$TestimonialResponseFromJson(Map<String, dynamic> json) =>
    TestimonialResponse(
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) =>
              TestimonialResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$TestimonialResponseToJson(
        TestimonialResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
    };

TestimonialResponseData _$TestimonialResponseDataFromJson(
        Map<String, dynamic> json) =>
    TestimonialResponseData(
      id: json['id'] as String?,
      likedByMe: json['liked_by_me'] as bool?,
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      description: json['description'] as String?,
      imageUrl: json['image_url'] as String?,
      videoUrl: json['video_url'] as String?,
      fullVideoUrl: json['full_video_url'],
      likes: (json['likes'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdBy: json['created_by'] as String?,
      modifiedBy: json['modified_by'] as String?,
      watched: json['watched'] as bool?,
    );

Map<String, dynamic> _$TestimonialResponseDataToJson(
        TestimonialResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'liked_by_me': instance.likedByMe,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'description': instance.description,
      'image_url': instance.imageUrl,
      'video_url': instance.videoUrl,
      'full_video_url': instance.fullVideoUrl,
      'likes': instance.likes,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'created_by': instance.createdBy,
      'modified_by': instance.modifiedBy,
      'watched': instance.watched,
    };
