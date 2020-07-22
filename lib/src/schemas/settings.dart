import 'package:json_annotation/json_annotation.dart';

part 'settings.g.dart';

/// WordPress Site Settings Endpoint Model /wp/v2/settings
@JsonSerializable()
class SettingsSchema {
  ///Site title.
  final String title;

  ///Site tagline.
  final String description;

  ///Site URL.
  final String url;

  /// This address is used for admin purposes, like new user notification.
  final String email;

  /// A city in the same timezone as you.
  final String timezone;

  /// A date format for all date strings.
  final String dateFormat;

  /// A time format for all time strings.
  final String timeFormat;

  /// A day number of the week that the week should start on.
  final int startOfWeek;

  ///WordPress locale code.
  final String language;

  ///Convert emoticons like :-) and :-P to graphics on display.
  final bool useSmilies;

  ///Default post category.
  final int defaultCategory;

  ///Default post format.
  final String defaultPostFormat;

  ///Blog pages show at most.
  final int postsPerPage;

  ///Allow link notifications from other blogs (pingbacks and trackbacks) on new articles.
  ///
  ///One of: "open", "closed"
  final String defaultPingStatus;

  ///Allow people to submit comments on new posts.
  ///
  ///One of: "open", "closed"
  final String defaultCommentStatus;

  SettingsSchema({
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

  /// Generate SettingsSchema Model from JSON
  factory SettingsSchema.fromJson(Map<String, dynamic> data) =>
      _$SettingsSchemaFromJson(data);

  /// Convert SettingsSchema to JSON
  Map<String, dynamic> toJson() => _$SettingsSchemaToJson(this);
}
