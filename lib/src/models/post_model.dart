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
  Map<String, dynamic> content;
  Map<String, dynamic> excerpt;
  int author;
  int featuredMedia;
  String commentStatus;
  String pingStatus;
  bool sticky;
  String template;
  PostFormat format;
  Map<String, dynamic> meta;
  List<int> categories;
  List<int> tags;
  Map<String, dynamic> links;

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

  BasePostModel.fromJson(Map<String, dynamic> data) {
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
    content = data['content'];
    excerpt = data['excerpt'];
    author = data['author'];
    featuredMedia = data['featured_media'];
    commentStatus = data['comment_status'];
    pingStatus = data['ping_status'];
    sticky = data['sticky'];
    template = data['template'];
    format = data['format'];
    meta = data['meta'];
    categories = data['categories'];
    tags = data['tags'];
    links = data['_links'];
  }
}
