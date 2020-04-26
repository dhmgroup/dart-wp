/// Wordpress Standard Comment Endpoint Model
class BaseCommentModel {
  final int id;
  final int post;
  final int parent;
  final int author;
  final String authorName;
  final String authorUrl;
  final String date;
  final String dateGMT;
  final Map<String, dynamic> content;
  final String link;
  final String status;
  final String type;
  final Map<String, dynamic> authorAvatarUrls;
  final Map<String, dynamic> meta;

  BaseCommentModel({
    this.id,
    this.post,
    this.parent,
    this.author,
    this.authorName,
    this.authorUrl,
    this.date,
    this.dateGMT,
    this.content,
    this.link,
    this.status,
    this.type,
    this.authorAvatarUrls,
    this.meta,
  });

  factory BaseCommentModel.fromJson(Map<String, dynamic> data) {
    return BaseCommentModel(
      id: data['id'],
    post: data['post'],
    parent: data['parent'],
    author: data['author'],
    authorName: data['author_name'],
    authorUrl: data['author_url'],
    date: data['date'],
    dateGMT: data['date_gmt'],
    content: data['content'],
    link: data['link'],
    status: data['status'],
    type: data['type'],
    authorAvatarUrls: data['author_avatar_urls'],
    meta: data['meta'],
    );
  }
}
