/// Wordpress Standard Category Endpoint Model
class BaseCategoryModel {
  int id;
  int count;
  String description;
  String link;
  String name;
  String slug;
  String taxonomy;
  int parent;
  Map<String, dynamic> meta;

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

  BaseCategoryModel.fromJson(Map<String, dynamic> data) {
    id = data['id'];
    count = data['count'];
    description = data['description'];
    link = data['link'];
    name = data['name'];
    slug = data['slug'];
    taxonomy = data['taxonomy'];
    parent = data['parent'];
    meta = data['meta'];
  }
}
