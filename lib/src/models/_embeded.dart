import 'package:wordpress_api/src/models.dart';

class EmbedModel {
  final List<Author>? author;
  final List<Media>? media;
  final List<Category>? categories;

  EmbedModel({this.author, this.media, this.categories});

  factory EmbedModel.fromMap(Map<String, dynamic> json) {
    List<Author>? author = null;
    if (json['author'] != null && json['author'] is List) {
      author = [];
      try {
        for (var author in json['author']) {
          author.add(new Author.fromMap(author));
        }
        ;
      } catch (e) {}
    }
    List<Media>? media = null;
    if (json['wp:featuredmedia'] != null && json['wp:featuredmedia'] is List) {
      media = [];

      for (var mediaMap in json['wp:featuredmedia']) {
        try {
          media.add(Media.fromMap(mediaMap));
        } catch (e) {
          throw e;
        }
      }
      ;
    }
    List<Category>? categories = null;
    if (json['wp:term'] != null && json['wp:term'] is List) {
      categories = [];

      for (var term in json['wp:term']) {
        if (term is List && term.isNotEmpty) {
          for (var categoryJson in term) {
            try {
              categories.add(Category.fromMap(categoryJson));
            } catch (e) {
              print('cannot cast $categoryJson to CATEGORY');
            }
          }
        }
      }
    }
    return EmbedModel(author: author, categories: categories, media: media);
  }
}

class Author {
  final int? id;
  final String? name;
  final String? url;
  final String? description;
  final String? link;
  final String? slug;
  final Map<String, dynamic>? avatarUrls;

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
    final avatarUrls = json['avatar_urls'] != null ? json['avatar_urls'] : null;
    return Author(
        id: id,
        name: name,
        url: url,
        description: description,
        link: link,
        slug: slug,
        avatarUrls: avatarUrls);
  }
}
