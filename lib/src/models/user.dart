import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:wordpress_api/src/models.dart';

class User {
  ///Unique identifier for the user.
  final int? id;

  ///Login name for the user.
  final String? username;

  /// Display name for the user.
  final String? name;

  ///First name for the user.
  final String? firstName;

  ///Last name for the user.
  final String? lastName;

  ///The email address for the user.
  final String? email;

  ///URL of the user.
  final String? url;

  ///Description of the user.
  final String? description;

  ///Author URL of the user.
  final String? link;

  ///Locale for the user.
  ///
  ///One of: , enUS
  final String? locale;

  ///The nickname for the user.
  final String? nickname;

  ///An alphanumeric identifier for the user.
  final String? slug;

  ///Registration date for the user.
  final String? registeredDate;

  ///Roles assigned to the user.
  final List? roles;

  ///Password for the user (never included).
  final String? password;

  ///All capabilities assigned to the user.
  final Map<String, dynamic>? capabilities;

  ///Any extra capabilities assigned to the user.
  final Map<String, dynamic>? extraCapabilities;

  ///Avatar URLs for the user.
  final AvatarUrl? avatarUrls;

  ///Meta fields.
  final dynamic meta;
  User({
    this.id,
    this.username,
    this.name,
    this.firstName,
    this.lastName,
    this.email,
    this.url,
    this.description,
    this.link,
    this.locale,
    this.nickname,
    this.slug,
    this.registeredDate,
    this.roles,
    this.password,
    this.capabilities,
    this.extraCapabilities,
    this.avatarUrls,
    this.meta,
  });

  User copyWith({
    int? id,
    String? username,
    String? name,
    String? firstName,
    String? lastName,
    String? email,
    String? url,
    String? description,
    String? link,
    String? locale,
    String? nickname,
    String? slug,
    String? registeredDate,
    List? roles,
    String? password,
    Map<String, dynamic>? capabilities,
    Map<String, dynamic>? extraCapabilities,
    AvatarUrl? avatarUrls,
    dynamic meta,
  }) {
    return User(
      id: id ?? this.id,
      username: username ?? this.username,
      name: name ?? this.name,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      url: url ?? this.url,
      description: description ?? this.description,
      link: link ?? this.link,
      locale: locale ?? this.locale,
      nickname: nickname ?? this.nickname,
      slug: slug ?? this.slug,
      registeredDate: registeredDate ?? this.registeredDate,
      roles: roles ?? this.roles,
      password: password ?? this.password,
      capabilities: capabilities ?? this.capabilities,
      extraCapabilities: extraCapabilities ?? this.extraCapabilities,
      avatarUrls: avatarUrls ?? this.avatarUrls,
      meta: meta ?? this.meta,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'username': username,
      'name': name,
      'first_name': firstName,
      'last_name': lastName,
      'email': email,
      'url': url,
      'description': description,
      'link': link,
      'locale': locale,
      'nickname': nickname,
      'slug': slug,
      'registered_date': registeredDate,
      'roles': roles,
      'password': password,
      'capabilities': capabilities,
      'extra_capabilities': extraCapabilities,
      'avatar_urls': avatarUrls,
      'meta': meta,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      username: map['username'],
      name: map['name'],
      firstName: map['first_name'],
      lastName: map['last_name'],
      email: map['email'],
      url: map['url'],
      description: map['description'],
      link: map['link'],
      locale: map['locale'],
      nickname: map['nickname'],
      slug: map['slug'],
      registeredDate: map['registered_date'],
      roles: map.containsKey('roles') ? List.from(map['roles']) : null,
      password: map['password'],
      capabilities: Map<String, dynamic>.from(map['capabilities'] ?? {}),
      extraCapabilities:
          Map<String, dynamic>.from(map['extra_capabilities'] ?? {}),
      avatarUrls: null != map['avatar_urls']
          ? AvatarUrl.fromMap(map['avatar_urls'])
          : null,
      meta: map['meta'],
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(id: $id, username: $username, name: $name, firstName: $firstName, lastName: $lastName, email: $email, url: $url, description: $description, link: $link, locale: $locale, nickname: $nickname, slug: $slug, registeredDate: $registeredDate, roles: $roles, password: $password, capabilities: $capabilities, extraCapabilities: $extraCapabilities, avatarUrls: $avatarUrls, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final collectionEquals = const DeepCollectionEquality().equals;

    return other is User &&
        other.id == id &&
        other.username == username &&
        other.name == name &&
        other.firstName == firstName &&
        other.lastName == lastName &&
        other.email == email &&
        other.url == url &&
        other.description == description &&
        other.link == link &&
        other.locale == locale &&
        other.nickname == nickname &&
        other.slug == slug &&
        other.registeredDate == registeredDate &&
        collectionEquals(other.roles, roles) &&
        other.password == password &&
        collectionEquals(other.capabilities, capabilities) &&
        collectionEquals(other.extraCapabilities, extraCapabilities) &&
        collectionEquals(other.avatarUrls, avatarUrls) &&
        other.meta == meta;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        username.hashCode ^
        name.hashCode ^
        firstName.hashCode ^
        lastName.hashCode ^
        email.hashCode ^
        url.hashCode ^
        description.hashCode ^
        link.hashCode ^
        locale.hashCode ^
        nickname.hashCode ^
        slug.hashCode ^
        registeredDate.hashCode ^
        roles.hashCode ^
        password.hashCode ^
        capabilities.hashCode ^
        extraCapabilities.hashCode ^
        avatarUrls.hashCode ^
        meta.hashCode;
  }
}

List<User>? parseUsers(dynamic data) {
  if (data is String) {
    return jsonDecode(data)
        .cast<Map<String, dynamic>>()
        .map<User>((json) => User.fromMap(json))
        .toList();
  } else {
    return data
        .cast<Map<String, dynamic>>()
        .map<User>((json) => User.fromMap(json))
        .toList();
  }
}
