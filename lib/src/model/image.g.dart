// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Image$ _$$Image$FromJson(Map<String, dynamic> json) => _$Image$(
      description: json['description'] as String?,
      likes: json['likes'] as num,
      date: json['created_at'] as String,
      url: Urls.fromJson(json['urls'] as Map<String, dynamic>),
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$Image$ToJson(_$Image$ instance) => <String, dynamic>{
      'description': instance.description,
      'likes': instance.likes,
      'created_at': instance.date,
      'urls': instance.url,
      'user': instance.user,
    };

_$Urls$ _$$Urls$FromJson(Map<String, dynamic> json) => _$Urls$(
      full: json['full'] as String,
      regular: json['regular'] as String,
    );

Map<String, dynamic> _$$Urls$ToJson(_$Urls$ instance) => <String, dynamic>{
      'full': instance.full,
      'regular': instance.regular,
    };

_$User$ _$$User$FromJson(Map<String, dynamic> json) => _$User$(
      username: json['username'] as String?,
      name: json['name'] as String?,
      bio: json['bio'] as String?,
      instagramUsername: json['instagram_username'] as String?,
    );

Map<String, dynamic> _$$User$ToJson(_$User$ instance) => <String, dynamic>{
      'username': instance.username,
      'name': instance.name,
      'bio': instance.bio,
      'instagram_username': instance.instagramUsername,
    };
