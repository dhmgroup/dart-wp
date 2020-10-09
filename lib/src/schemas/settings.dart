import 'package:freezed_annotation/freezed_annotation.dart';

part 'settings.freezed.dart';
part 'settings.g.dart';

@freezed
abstract class SettingsSchema with _$SettingsSchema {
  factory SettingsSchema({
    ///Site title.
    String title,

    ///Site tagline.
    String description,

    ///Site URL.
    String url,

    /// This address is used for admin purposes, like new user notification.
    String email,

    /// A city in the same timezone as you.
    String timezone,

    /// A date format for all date strings.
    String dateFormat,

    /// A time format for all time strings.
    String timeFormat,

    /// A day number of the week that the week should start on.
    int startOfWeek,

    ///WordPress locale code.
    String language,

    ///Convert emoticons to graphics on display.
    bool useSmilies,

    ///Default post category.
    int defaultCategory,

    ///Default post format.
    String defaultPostFormat,

    ///Blog pages show at most.
    int postsPerPage,

    ///Allow link notifications from other blogs (pingbacks and trackbacks) on new articles.
    ///
    ///One of: "open", "closed"
    String defaultPingStatus,

    ///Allow people to submit comments on new posts.
    ///
    ///One of: "open", "closed"
    String defaultCommentStatus,
  }) = _SettingsSchema;

  factory SettingsSchema.fromJson(Map<String, dynamic> json) =>
      _$SettingsSchemaFromJson(json);
}
