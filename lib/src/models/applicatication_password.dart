import 'dart:convert';

class ApplicationPassword {
  ///The unique identifier for the application password.
  final String? uuid;

  /// A uuid provided by the application to uniquely identify it. It is recommended to use an UUID v5 with the URL or DNS namespace.
  final String? appId;

  ///The name of the application password.
  final String? name;

  ///The generated password. Only available after adding an application.
  final String? password;

  ///The GMT date the application password was created.
  final String? created;

  ///The GMT date the application password was last used.
  final String? lastUsed;

  ///The IP address the application password was last used by.
  final String? lastIp;
  ApplicationPassword({
    this.uuid,
    this.appId,
    this.name,
    this.password,
    this.created,
    this.lastUsed,
    this.lastIp,
  });

  ApplicationPassword copyWith({
    String? uuid,
    String? appId,
    String? name,
    String? password,
    String? created,
    String? lastUsed,
    String? lastIp,
  }) {
    return ApplicationPassword(
      uuid: uuid ?? this.uuid,
      appId: appId ?? this.appId,
      name: name ?? this.name,
      password: password ?? this.password,
      created: created ?? this.created,
      lastUsed: lastUsed ?? this.lastUsed,
      lastIp: lastIp ?? this.lastIp,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'uuid': uuid,
      'app_id': appId,
      'name': name,
      'password': password,
      'created': created,
      'last_used': lastUsed,
      'last_ip': lastIp,
    };
  }

  factory ApplicationPassword.fromMap(Map<String, dynamic> map) {
    return ApplicationPassword(
      uuid: map['uuid'],
      appId: map['app_id'],
      name: map['name'],
      password: map['password'],
      created: map['created'],
      lastUsed: map['last_used'],
      lastIp: map['last_ip'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ApplicationPassword.fromJson(String source) =>
      ApplicationPassword.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ApplicationPassword(uuid: $uuid, appId: $appId, name: $name, password: $password, created: $created, lastUsed: $lastUsed, lastIp: $lastIp)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ApplicationPassword &&
        o.uuid == uuid &&
        o.appId == appId &&
        o.name == name &&
        o.password == password &&
        o.created == created &&
        o.lastUsed == lastUsed &&
        o.lastIp == lastIp;
  }

  @override
  int get hashCode {
    return uuid.hashCode ^
        appId.hashCode ^
        name.hashCode ^
        password.hashCode ^
        created.hashCode ^
        lastUsed.hashCode ^
        lastIp.hashCode;
  }
}

List<ApplicationPassword>? parseApplicationPasswords(dynamic data) {
  if (data is String) {
    return jsonDecode(data)
        .cast<Map<String, dynamic>>()
        .map<ApplicationPassword>((json) => ApplicationPassword.fromMap(json))
        .toList();
  } else {
    return data
        .cast<Map<String, dynamic>>()
        .map<ApplicationPassword>((json) => ApplicationPassword.fromMap(json))
        .toList();
  }
}
