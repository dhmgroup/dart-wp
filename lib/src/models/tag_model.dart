/// Type attribution for the term.
enum Taxonomy { category, post_tag, nav_menu, link_category, post_format }

/// Wordpress Standard Tag Endpoint Model
class BaseTagModel {
  int id;
  int count;
  String description;
  String link;
  String name;
  String slug;
  Taxonomy taxonomy;
  Map<String, dynamic> meta;

  BaseTagModel({
    this.id,
    this.count,
    this.description,
    this.link,
    this.name,
    this.slug,
    this.taxonomy,
    this.meta,
  });

  BaseTagModel.fromJson(Map<String, dynamic> data) {
    id = data['id'];
    count = data['count'];
    description = data['description'];
    link = data['link'];
    name = data['name'];
    slug = data['slug'];
    taxonomy = data['taxonomy'];
    meta = data['meta'];
  }
}
