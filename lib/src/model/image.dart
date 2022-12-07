import 'package:freezed_annotation/freezed_annotation.dart';

part 'image.freezed.dart';
part 'image.g.dart';

@freezed
class Image with _$Image {
  const factory Image({
    required String? description,
    required num likes,
    @JsonKey(name: 'created_at') required String date,
    @JsonKey(name: 'urls') required Urls url,
    @JsonKey(name: 'user') required User user,
  }) = Image$;

  factory Image.fromJson(Map<dynamic, dynamic> json) => _$ImageFromJson(Map<String, dynamic>.from(json));
}

@freezed
class Urls with _$Urls {
  const factory Urls({
    required String full,
    required String regular,
  }) = Urls$;

  factory Urls.fromJson(Map<dynamic, dynamic> json) => _$UrlsFromJson(Map<String, dynamic>.from(json));
}

@freezed
class User with _$User {
  const factory User({
    required String? username,
    required String? name,
    required String? bio,
    @JsonKey(name: 'instagram_username') required String? instagramUsername,
  }) = User$;

  factory User.fromJson(Map<dynamic, dynamic> json) => _$UserFromJson(Map<String, dynamic>.from(json));
}
