class BaseUserModel {
  final int id;
  final String username;
  final String name;
  final String firstName;
  final String lastName;
  final String email;
  final String url;
  final String description;
  final String link;
  final String nickname;
  final String slug;
  final String registeredDate;
  final List<String> roles;
  final String password;
  final Map<String, dynamic> capabilities;
  final Map<String, dynamic> extraCapabilities;
  final Map<String, dynamic> avatarUrls;
  final Map<String, dynamic> meta;

  BaseUserModel({
    this.id,
    this.username,
    this.name,
    this.firstName,
    this.lastName,
    this.email,
    this.url,
    this.description,
    this.link,
    this.nickname,
    this.slug,
    this.registeredDate,
    this.roles,
    this.password,
    this.capabilities,
    this.extraCapabilities,
    this.avatarUrls,
    this.meta,
  });

  factory BaseUserModel.fromJson(Map<String, dynamic> data) {
    return BaseUserModel(
      id: data['id'],
      username: data['username'],
      name: data['name'],
      firstName: data['first_name'],
      lastName: data['last_name'],
      email: data['email'],
      url: data['url'],
      description: data['description'],
      link: data['link'],
      nickname: data['nickname'],
      slug: data['slug'],
      registeredDate: data['registered_date'],
      roles: data['roles'],
      password: data['password'],
      capabilities: data['capabilities'],
      extraCapabilities: data['extra_capabilities'],
      avatarUrls: data['avatar_urls'],
      meta: data['meta'],
    );
  }
}
