import 'post_model.dart';

/// Wordpress Standard Media Endpoint Model
class BaseMediaModel {
  final int id;
  final String date;
  final String dateGMT;
  final Map<String, dynamic> guid;
  final String modified;
  final String modifiedGMT;
  final String slug;
  final PostStatus status;
  final String type;
  final String link;
  final Map<String, dynamic> title;
  final int author;
  final String commentStatus;
  final String pingStatus;
  final String template;
  final Map<String, dynamic> meta;
  final Map<String, dynamic> description;
  final Map<String, dynamic> caption;
  final String altText;
  final String mediaType;
  final String mimeType;
  final Map<String, dynamic> mediaDetails;
  final int post;
  final String sourceUrl;

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

  factory BaseMediaModel.fromJson(Map<String, dynamic> data) {
    return BaseMediaModel(
      id: data['id'],
      date: data['date'],
      dateGMT: data['date_gmt'],
      guid: data['guid'],
      modified: data['modified'],
      modifiedGMT: data['modified_gmt'],
      slug: data['slug'],
      status: data['status'],
      type: data['type'],
      link: data['link'],
      title: data['title'],
      author: data['author'],
      commentStatus: data['comment_status'],
      pingStatus: data['ping_status'],
      template: data['template'],
      meta: data['meta'],
      description: data['description'],
      caption: data['caption'],
      altText: data['alt_text'],
      mediaType: data['media_type'],
      mimeType: data['mime_type'],
      mediaDetails: data['media_details'],
      post: data['post'],
      sourceUrl: data['source_url'],
    );
  }
}
