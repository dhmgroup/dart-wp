import 'package:wordpress_api/src/models/post_model.dart';

/// Wordpress Standard Media Endpoint Model
class BaseMediaModel {
  int id;
  String date;
  String dateGMT;
  Map<String, dynamic> guid;
  String modified;
  String modifiedGMT;
  String slug;
  PostStatus status;
  String type;
  String link;
  Map<String, dynamic> title;
  int author;
  String commentStatus;
  String pingStatus;
  String template;
  Map<String, dynamic> meta;
  Map<String, dynamic> description;
  Map<String, dynamic> caption;
  String altText;
  String mediaType;
  String mimeType;
  Map<String, dynamic> mediaDetails;
  int post;
  String sourceUrl;

  BaseMediaModel({
    this.id,
    this.date,
    this.dateGMT,
    this.guid,
    this.modified,
    this.modifiedGMT,
    this.slug,
    this.status,
    this.type,
    this.link,
    this.title,
    this.author,
    this.commentStatus,
    this.pingStatus,
    this.template,
    this.meta,
    this.description,
    this.caption,
    this.altText,
    this.mediaType,
    this.mimeType,
    this.mediaDetails,
    this.post,
    this.sourceUrl,
  });

  BaseMediaModel.fromJson(Map<String, dynamic> data) {
    id = data['id'];
    date = data['date'];
    dateGMT = data['date_gmt'];
    guid = data['guid'];
    modified = data['modified'];
    modifiedGMT = data['modified_gmt'];
    slug = data['slug'];
    status = data['status'];
    type = data['type'];
    link = data['link'];
    title = data['title'];
    author = data['author'];
    commentStatus = data['comment_status'];
    pingStatus = data['ping_status'];
    template = data['template'];
    meta = data['meta'];
    description = data['description'];
    caption = data['caption'];
    altText = data['alt_text'];
    mediaType = data['media_type'];
    mimeType = data['mime_type'];
    mediaDetails = data['media_details'];
    post = data['post'];
    sourceUrl = data['source_url'];
  }
}
