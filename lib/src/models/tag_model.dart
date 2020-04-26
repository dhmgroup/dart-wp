/// Type attribution for the term.
enum Taxonomy { category, post_tag, nav_menu, link_category, post_format }

/// Wordpress Standard Tag Endpoint Model
class BaseTagModel {
  final int id;
  final int count;
  final String description;
  final String link;
  final String name;
  final String slug;
  final Taxonomy taxonomy;
  final Map<String, dynamic> meta;

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

  factory BaseTagModel.fromJson(Map<String, dynamic> data) {
    return BaseTagModel(
      id: data['id'],
      count: data['count'],
      description: data['description'],
      link: data['link'],
      name: data['name'],
      slug: data['slug'],
      taxonomy: data['taxonomy'],
      meta: data['meta'],
    );
  }
}
