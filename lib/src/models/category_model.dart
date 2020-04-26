/// Wordpress Standard Category Endpoint Model
class BaseCategoryModel {
  final int id;
  final int count;
  final String description;
  final String link;
  final String name;
  final String slug;
  final String taxonomy;
  final int parent;
  final Map<String, dynamic> meta;

  BaseCategoryModel({
    this.id,
    this.count,
    this.description,
    this.link,
    this.name,
    this.slug,
    this.taxonomy,
    this.parent,
    this.meta,
  });

  factory BaseCategoryModel.fromJson(Map<String, dynamic> data) {
    return BaseCategoryModel(
      id: data['id'],
      count: data['count'],
      description: data['description'],
      link: data['link'],
      name: data['name'],
      slug: data['slug'],
      taxonomy: data['taxonomy'],
      parent: data['parent'],
      meta: data['meta'],
    );
  }
}
