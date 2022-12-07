// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Image _$ImageFromJson(Map<String, dynamic> json) {
  return Image$.fromJson(json);
}

/// @nodoc
mixin _$Image {
  String? get description => throw _privateConstructorUsedError;
  num get likes => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String get date => throw _privateConstructorUsedError;
  @JsonKey(name: "urls")
  Urls get url => throw _privateConstructorUsedError;
  @JsonKey(name: "user")
  User get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) = _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call(
      {String? description,
      num likes,
      @JsonKey(name: "created_at") String date,
      @JsonKey(name: "urls") Urls url,
      @JsonKey(name: "user") User user});

  $UrlsCopyWith<$Res> get url;
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image> implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? likes = null,
    Object? date = null,
    Object? url = null,
    Object? user = null,
  }) {
    return _then(_value.copyWith(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as num,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Urls,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UrlsCopyWith<$Res> get url {
    return $UrlsCopyWith<$Res>(_value.url, (value) {
      return _then(_value.copyWith(url: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$Image$CopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$Image$CopyWith(_$Image$ value, $Res Function(_$Image$) then) = __$$Image$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? description,
      num likes,
      @JsonKey(name: "created_at") String date,
      @JsonKey(name: "urls") Urls url,
      @JsonKey(name: "user") User user});

  @override
  $UrlsCopyWith<$Res> get url;
  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$Image$CopyWithImpl<$Res> extends _$ImageCopyWithImpl<$Res, _$Image$> implements _$$Image$CopyWith<$Res> {
  __$$Image$CopyWithImpl(_$Image$ _value, $Res Function(_$Image$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? likes = null,
    Object? date = null,
    Object? url = null,
    Object? user = null,
  }) {
    return _then(_$Image$(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as num,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Urls,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Image$ implements Image$ {
  const _$Image$(
      {required this.description,
      required this.likes,
      @JsonKey(name: "created_at") required this.date,
      @JsonKey(name: "urls") required this.url,
      @JsonKey(name: "user") required this.user});

  factory _$Image$.fromJson(Map<String, dynamic> json) => _$$Image$FromJson(json);

  @override
  final String? description;
  @override
  final num likes;
  @override
  @JsonKey(name: "created_at")
  final String date;
  @override
  @JsonKey(name: "urls")
  final Urls url;
  @override
  @JsonKey(name: "user")
  final User user;

  @override
  String toString() {
    return 'Image(description: $description, likes: $likes, date: $date, url: $url, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Image$ &&
            (identical(other.description, description) || other.description == description) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.user, user) || other.user == user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, description, likes, date, url, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Image$CopyWith<_$Image$> get copyWith => __$$Image$CopyWithImpl<_$Image$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Image$ToJson(
      this,
    );
  }
}

abstract class Image$ implements Image {
  const factory Image$(
      {required final String? description,
      required final num likes,
      @JsonKey(name: "created_at") required final String date,
      @JsonKey(name: "urls") required final Urls url,
      @JsonKey(name: "user") required final User user}) = _$Image$;

  factory Image$.fromJson(Map<String, dynamic> json) = _$Image$.fromJson;

  @override
  String? get description;
  @override
  num get likes;
  @override
  @JsonKey(name: "created_at")
  String get date;
  @override
  @JsonKey(name: "urls")
  Urls get url;
  @override
  @JsonKey(name: "user")
  User get user;
  @override
  @JsonKey(ignore: true)
  _$$Image$CopyWith<_$Image$> get copyWith => throw _privateConstructorUsedError;
}

Urls _$UrlsFromJson(Map<String, dynamic> json) {
  return Urls$.fromJson(json);
}

/// @nodoc
mixin _$Urls {
  String get full => throw _privateConstructorUsedError;
  String get regular => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UrlsCopyWith<Urls> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UrlsCopyWith<$Res> {
  factory $UrlsCopyWith(Urls value, $Res Function(Urls) then) = _$UrlsCopyWithImpl<$Res, Urls>;
  @useResult
  $Res call({String full, String regular});
}

/// @nodoc
class _$UrlsCopyWithImpl<$Res, $Val extends Urls> implements $UrlsCopyWith<$Res> {
  _$UrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? full = null,
    Object? regular = null,
  }) {
    return _then(_value.copyWith(
      full: null == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String,
      regular: null == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Urls$CopyWith<$Res> implements $UrlsCopyWith<$Res> {
  factory _$$Urls$CopyWith(_$Urls$ value, $Res Function(_$Urls$) then) = __$$Urls$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String full, String regular});
}

/// @nodoc
class __$$Urls$CopyWithImpl<$Res> extends _$UrlsCopyWithImpl<$Res, _$Urls$> implements _$$Urls$CopyWith<$Res> {
  __$$Urls$CopyWithImpl(_$Urls$ _value, $Res Function(_$Urls$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? full = null,
    Object? regular = null,
  }) {
    return _then(_$Urls$(
      full: null == full
          ? _value.full
          : full // ignore: cast_nullable_to_non_nullable
              as String,
      regular: null == regular
          ? _value.regular
          : regular // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Urls$ implements Urls$ {
  const _$Urls$({required this.full, required this.regular});

  factory _$Urls$.fromJson(Map<String, dynamic> json) => _$$Urls$FromJson(json);

  @override
  final String full;
  @override
  final String regular;

  @override
  String toString() {
    return 'Urls(full: $full, regular: $regular)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Urls$ &&
            (identical(other.full, full) || other.full == full) &&
            (identical(other.regular, regular) || other.regular == regular));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, full, regular);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Urls$CopyWith<_$Urls$> get copyWith => __$$Urls$CopyWithImpl<_$Urls$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Urls$ToJson(
      this,
    );
  }
}

abstract class Urls$ implements Urls {
  const factory Urls$({required final String full, required final String regular}) = _$Urls$;

  factory Urls$.fromJson(Map<String, dynamic> json) = _$Urls$.fromJson;

  @override
  String get full;
  @override
  String get regular;
  @override
  @JsonKey(ignore: true)
  _$$Urls$CopyWith<_$Urls$> get copyWith => throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return User$.fromJson(json);
}

/// @nodoc
mixin _$User {
  String? get username => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  @JsonKey(name: "instagram_username")
  String? get instagramUsername => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) = _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String? username, String? name, String? bio, @JsonKey(name: "instagram_username") String? instagramUsername});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? name = freezed,
    Object? bio = freezed,
    Object? instagramUsername = freezed,
  }) {
    return _then(_value.copyWith(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramUsername: freezed == instagramUsername
          ? _value.instagramUsername
          : instagramUsername // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$User$CopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$User$CopyWith(_$User$ value, $Res Function(_$User$) then) = __$$User$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? username, String? name, String? bio, @JsonKey(name: "instagram_username") String? instagramUsername});
}

/// @nodoc
class __$$User$CopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$User$> implements _$$User$CopyWith<$Res> {
  __$$User$CopyWithImpl(_$User$ _value, $Res Function(_$User$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? name = freezed,
    Object? bio = freezed,
    Object? instagramUsername = freezed,
  }) {
    return _then(_$User$(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramUsername: freezed == instagramUsername
          ? _value.instagramUsername
          : instagramUsername // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$User$ implements User$ {
  const _$User$(
      {required this.username,
      required this.name,
      required this.bio,
      @JsonKey(name: "instagram_username") required this.instagramUsername});

  factory _$User$.fromJson(Map<String, dynamic> json) => _$$User$FromJson(json);

  @override
  final String? username;
  @override
  final String? name;
  @override
  final String? bio;
  @override
  @JsonKey(name: "instagram_username")
  final String? instagramUsername;

  @override
  String toString() {
    return 'User(username: $username, name: $name, bio: $bio, instagramUsername: $instagramUsername)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$User$ &&
            (identical(other.username, username) || other.username == username) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.instagramUsername, instagramUsername) || other.instagramUsername == instagramUsername));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, username, name, bio, instagramUsername);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$User$CopyWith<_$User$> get copyWith => __$$User$CopyWithImpl<_$User$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$User$ToJson(
      this,
    );
  }
}

abstract class User$ implements User {
  const factory User$(
      {required final String? username,
      required final String? name,
      required final String? bio,
      @JsonKey(name: "instagram_username") required final String? instagramUsername}) = _$User$;

  factory User$.fromJson(Map<String, dynamic> json) = _$User$.fromJson;

  @override
  String? get username;
  @override
  String? get name;
  @override
  String? get bio;
  @override
  @JsonKey(name: "instagram_username")
  String? get instagramUsername;
  @override
  @JsonKey(ignore: true)
  _$$User$CopyWith<_$User$> get copyWith => throw _privateConstructorUsedError;
}
