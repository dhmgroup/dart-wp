import 'dart:convert';

class Setting {
  ///Site title.
  final String? title;

  ///Site tagline.
  final String? description;

  ///Site URL.
  final String? url;

  /// This address is used for admin purposes, like new user notification.
  final String? email;

  /// A city in the same timezone as you.
  final String? timezone;

  /// A date format for all date strings.
  final String? dateFormat;

  /// A time format for all time strings.
  final String? timeFormat;

  /// A day number of the week that the week should start on.
  final int? startOfWeek;

  ///WordPress locale code.
  final String? language;

  ///Convert emoticons to graphics on display.
  final bool? useSmilies;

  ///Default post category.
  final int? defaultCategory;

  ///Default post format.
  final String? defaultPostFormat;

  ///Blog pages show at most.
  final int? postsPerPage;

  ///Allow link notifications from other blogs (pingbacks and trackbacks) on new articles.
  ///
  ///One of: "open", "closed"
  final String? defaultPingStatus;

  ///Allow people to submit comments on new posts.
  ///
  ///One of: "open", "closed"
  final String? defaultCommentStatus;
  Setting({
    this.title,
    this.description,
    this.url,
    this.email,
    this.timezone,
    this.dateFormat,
    this.timeFormat,
    this.startOfWeek,
    this.language,
    this.useSmilies,
    this.defaultCategory,
    this.defaultPostFormat,
    this.postsPerPage,
    this.defaultPingStatus,
    this.defaultCommentStatus,
  });

  Setting copyWith({
    String? title,
    String? description,
    String? url,
    String? email,
    String? timezone,
    String? dateFormat,
    String? timeFormat,
    int? startOfWeek,
    String? language,
    bool? useSmilies,
    int? defaultCategory,
    String? defaultPostFormat,
    int? postsPerPage,
    String? defaultPingStatus,
    String? defaultCommentStatus,
  }) {
    return Setting(
      title: title ?? this.title,
      description: description ?? this.description,
      url: url ?? this.url,
      email: email ?? this.email,
      timezone: timezone ?? this.timezone,
      dateFormat: dateFormat ?? this.dateFormat,
      timeFormat: timeFormat ?? this.timeFormat,
      startOfWeek: startOfWeek ?? this.startOfWeek,
      language: language ?? this.language,
      useSmilies: useSmilies ?? this.useSmilies,
      defaultCategory: defaultCategory ?? this.defaultCategory,
      defaultPostFormat: defaultPostFormat ?? this.defaultPostFormat,
      postsPerPage: postsPerPage ?? this.postsPerPage,
      defaultPingStatus: defaultPingStatus ?? this.defaultPingStatus,
      defaultCommentStatus: defaultCommentStatus ?? this.defaultCommentStatus,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'description': description,
      'url': url,
      'email': email,
      'timezone': timezone,
      'date_format': dateFormat,
      'time_format': timeFormat,
      'start_of_week': startOfWeek,
      'language': language,
      'use_smilies': useSmilies,
      'default_Category': defaultCategory,
      'default_post_format': defaultPostFormat,
      'posts_per_page': postsPerPage,
      'default_ping_status': defaultPingStatus,
      'default_comment_status': defaultCommentStatus,
    };
  }

  factory Setting.fromMap(Map<String, dynamic> map) {
    return Setting(
      title: map['title'],
      description: map['description'],
      url: map['url'],
      email: map['email'],
      timezone: map['timezone'],
      dateFormat: map['date_format'],
      timeFormat: map['time_format'],
      startOfWeek: map['start_of_week'],
      language: map['language'],
      useSmilies: map['use_smilies'],
      defaultCategory: map['default_category'],
      defaultPostFormat: map['default_post_format'],
      postsPerPage: map['posts_per_page'],
      defaultPingStatus: map['default_ping_status'],
      defaultCommentStatus: map['default_comment_status'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Setting.fromJson(String source) =>
      Setting.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Setting(title: $title, description: $description, url: $url, email: $email, timezone: $timezone, dateFormat: $dateFormat, timeFormat: $timeFormat, startOfWeek: $startOfWeek, language: $language, useSmilies: $useSmilies, defaultCategory: $defaultCategory, defaultPostFormat: $defaultPostFormat, postsPerPage: $postsPerPage, defaultPingStatus: $defaultPingStatus, defaultCommentStatus: $defaultCommentStatus)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Setting &&
        o.title == title &&
        o.description == description &&
        o.url == url &&
        o.email == email &&
        o.timezone == timezone &&
        o.dateFormat == dateFormat &&
        o.timeFormat == timeFormat &&
        o.startOfWeek == startOfWeek &&
        o.language == language &&
        o.useSmilies == useSmilies &&
        o.defaultCategory == defaultCategory &&
        o.defaultPostFormat == defaultPostFormat &&
        o.postsPerPage == postsPerPage &&
        o.defaultPingStatus == defaultPingStatus &&
        o.defaultCommentStatus == defaultCommentStatus;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        description.hashCode ^
        url.hashCode ^
        email.hashCode ^
        timezone.hashCode ^
        dateFormat.hashCode ^
        timeFormat.hashCode ^
        startOfWeek.hashCode ^
        language.hashCode ^
        useSmilies.hashCode ^
        defaultCategory.hashCode ^
        defaultPostFormat.hashCode ^
        postsPerPage.hashCode ^
        defaultPingStatus.hashCode ^
        defaultCommentStatus.hashCode;
  }
}
