import 'package:wordpress_api/src/models.dart';

class Author {
  final int? id;
  final String? name;
  final String? url;
  final String? description;
  final String? link;
  final String? slug;
  final AvatarUrl? avatarUrls;

  Author(
      {this.id,
      this.name,
      this.url,
      this.description,
      this.link,
      this.slug,
      this.avatarUrls});

  factory Author.fromMap(Map<String, dynamic> json) {
    final id = json['id'];
    final name = json['name'];
    final url = json['url'];
    final description = json['description'];
    final link = json['link'];
    final slug = json['slug'];
    final avatarUrls = null != json['avatar_urls']
        ? AvatarUrl.fromMap(json['avatar_urls'])
        : null;
    return Author(
      id: id,
      name: name,
      url: url,
      description: description,
      link: link,
      slug: slug,
      avatarUrls: avatarUrls,
    );
  }
}
