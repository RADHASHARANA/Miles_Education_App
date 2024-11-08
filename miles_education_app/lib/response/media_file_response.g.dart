// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'media_file_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MediaResponse _$MediaResponseFromJson(Map<String, dynamic> json) =>
    MediaResponse(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => MediaResponseData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MediaResponseToJson(MediaResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

MediaResponseData _$MediaResponseDataFromJson(Map<String, dynamic> json) =>
    MediaResponseData(
      id: json['id'] as String?,
      blockType: json['block_type'] as String?,
      name: json['name'] as String?,
      heading: json['heading'] as String?,
      position: (json['position'] as num?)?.toInt(),
      count: (json['count'] as num?)?.toInt(),
      active: json['active'] as bool?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      vertical: json['vertical'] as String?,
      createdBy: json['created_by'],
      modifiedBy: json['modified_by'] as String?,
      posts: (json['posts'] as List<dynamic>?)
          ?.map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$MediaResponseDataToJson(MediaResponseData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'block_type': instance.blockType,
      'name': instance.name,
      'heading': instance.heading,
      'position': instance.position,
      'count': instance.count,
      'active': instance.active,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'vertical': instance.vertical,
      'created_by': instance.createdBy,
      'modified_by': instance.modifiedBy,
      'posts': instance.posts,
    };

Post _$PostFromJson(Map<String, dynamic> json) => Post(
      id: json['id'] as String?,
      files: (json['files'] as List<dynamic>?)
          ?.map((e) => FileElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      likedByMe: json['liked_by_me'] as bool?,
      title: json['title'] as String?,
      postType: json['post_type'] as String?,
      description: json['description'] as String?,
      metadata: json['metadata'] as String?,
      fullVideoUrl: json['full_video_url'] as String?,
      blogUrl: json['blog_url'] as String?,
      active: json['active'] as bool?,
      featured: json['featured'] as bool?,
      priority: (json['priority'] as num?)?.toInt(),
      likes: (json['likes'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdBy: json['created_by'] as String?,
      layout: json['layout'] as String?,
      persona: json['persona'],
      modifiedBy: json['modified_by'] as String?,
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'id': instance.id,
      'files': instance.files,
      'liked_by_me': instance.likedByMe,
      'title': instance.title,
      'post_type': instance.postType,
      'description': instance.description,
      'metadata': instance.metadata,
      'full_video_url': instance.fullVideoUrl,
      'blog_url': instance.blogUrl,
      'active': instance.active,
      'featured': instance.featured,
      'priority': instance.priority,
      'likes': instance.likes,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'created_by': instance.createdBy,
      'layout': instance.layout,
      'persona': instance.persona,
      'modified_by': instance.modifiedBy,
    };

FileElement _$FileElementFromJson(Map<String, dynamic> json) => FileElement(
      id: json['id'] as String?,
      mediaType: $enumDecodeNullable(_$MediaTypeEnumMap, json['media_type']),
      videoUrl: json['video_url'] as String?,
      thumbnail: json['thumbnail'] as String?,
      imagePath: json['image_path'] as String?,
      mediaOrder: (json['media_order'] as num?)?.toInt(),
      ratio: json['ratio'],
      active: json['active'] as bool?,
      post: json['post'] as String?,
    );

Map<String, dynamic> _$FileElementToJson(FileElement instance) =>
    <String, dynamic>{
      'id': instance.id,
      'media_type': _$MediaTypeEnumMap[instance.mediaType],
      'video_url': instance.videoUrl,
      'thumbnail': instance.thumbnail,
      'image_path': instance.imagePath,
      'media_order': instance.mediaOrder,
      'ratio': instance.ratio,
      'active': instance.active,
      'post': instance.post,
    };

const _$MediaTypeEnumMap = {
  MediaType.IMAGE: 'image',
  MediaType.VIDEO: 'video',
};
