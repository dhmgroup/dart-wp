enum PostStatus { publish, future, draft, pending, private }

enum PostFormat {
  standard,
  aside,
  chat,
  gallery,
  link,
  image,
  quote,
  status,
  video,
  audio
}

/// Wordpress Standard Post Endpoint Model
class BasePostModel {
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
  final Map<String, dynamic> content;
  final Map<String, dynamic> excerpt;
  final int author;
  final int featuredMedia;
  final String commentStatus;
  final String pingStatus;
  final bool sticky;
  final String template;
  final PostFormat format;
  final Map<String, dynamic> meta;
  final List<int> categories;
  final List<int> tags;
  final Map<String, dynamic> links;

  BasePostModel({
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
    this.content,
    this.excerpt,
    this.author,
    this.featuredMedia,
    this.commentStatus,
    this.pingStatus,
    this.sticky,
    this.template,
    this.format,
    this.meta,
    this.categories,
    this.tags,
    this.links,
  });

  factory BasePostModel.fromJson(Map<String, dynamic> data) {
    return BasePostModel(
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
      content: data['content'],
      excerpt: data['excerpt'],
      author: data['author'],
      featuredMedia: data['featured_media'],
      commentStatus: data['comment_status'],
      pingStatus: data['ping_status'],
      sticky: data['sticky'],
      template: data['template'],
      format: data['format'],
      meta: data['meta'],
      categories: data['categories'],
      tags: data['tags'],
      links: data['_links'],
    );
  }
}
