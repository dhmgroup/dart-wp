import 'package:wordpress_api/src/models.dart';

class EmbedModel {
  final List<Author>? author;
  final List<Media>? media;
  final List<Category>? categories;

  EmbedModel({this.author, this.media, this.categories});

  factory EmbedModel.fromMap(Map<String, dynamic> json) {
    List<Author>? authorList;
    if (json['author'] != null && json['author'] is List) {
      authorList = [];
      try {
        for (var author in json['author']) {
          authorList.add(Author.fromMap(author));
        }
      } catch (e) {
        rethrow;
      }
    }

    List<Media>? mediaList;
    if (json['wp:featuredmedia'] != null && json['wp:featuredmedia'] is List) {
      mediaList = [];

      for (var mediaMap in json['wp:featuredmedia']) {
        try {
          mediaList.add(Media.fromMap(mediaMap));
        } catch (e) {
          rethrow;
        }
      }
    }

    List<Category>? categoriesList;
    if (json['wp:term'] != null && json['wp:term'] is List) {
      categoriesList = [];

      for (var term in json['wp:term']) {
        if (term is List && term.isNotEmpty) {
          for (var categoryJson in term) {
            try {
              categoriesList.add(Category.fromMap(categoryJson));
            } catch (e) {
              rethrow;
            }
          }
        }
      }
    }
    return EmbedModel(
        author: authorList, categories: categoriesList, media: mediaList);
  }
}
