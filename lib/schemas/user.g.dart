// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserSchema _$UserSchemaFromJson(Map<String, dynamic> json) {
  return UserSchema(
    id: json['id'] as int,
    username: json['username'] as String,
    name: json['name'] as String,
    firstName: json['first_name'] as String,
    lastName: json['last_name'] as String,
    email: json['email'] as String,
    url: json['url'] as String,
    description: json['description'] as String,
    link: json['link'] as String,
    locale: json['locale'] as String,
    nickname: json['nickname'] as String,
    slug: json['slug'] as String,
    registeredDate: json['registered_date'] as String,
    roles: json['roles'] as List,
    password: json['password'] as String,
    capabilities: json['capabilities'] as Map<String, dynamic>,
    extraCapabilities: json['extra_capabilities'] as Map<String, dynamic>,
    avatarUrls: json['avatar_urls'] as Map<String, dynamic>,
    meta: json['meta'] as Map<String, dynamic>,
  );
}

Map<String, dynamic> _$UserSchemaToJson(UserSchema instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'name': instance.name,
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'email': instance.email,
      'url': instance.url,
      'description': instance.description,
      'link': instance.link,
      'locale': instance.locale,
      'nickname': instance.nickname,
      'slug': instance.slug,
      'registered_date': instance.registeredDate,
      'roles': instance.roles,
      'password': instance.password,
      'capabilities': instance.capabilities,
      'extra_capabilities': instance.extraCapabilities,
      'avatar_urls': instance.avatarUrls,
      'meta': instance.meta,
    };
