/// Wordpress Standard Comment Endpoint Model
class BaseCommentModel {
  int id;
  int post;
  int parent;
  int author;
  String authorName;
  String authorUrl;
  String date;
  String dateGMT;
  Map<String, dynamic> content;
  String link;
  String status;
  String type;
  Map<String, dynamic> authorAvatarUrls;
  Map<String, dynamic> meta;

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

  BaseCommentModel.fromJson(Map<String, dynamic> data) {
    id = data['id'];
    post = data['post'];
    parent = data['parent'];
    author = data['author'];
    authorName = data['author_name'];
    authorUrl = data['author_url'];
    date = data['date'];
    dateGMT = data['date_gmt'];
    content = data['content'];
    link = data['link'];
    status = data['status'];
    type = data['type'];
    authorAvatarUrls = data['author_avatar_urls'];
    meta = data['meta'];
  }
}
