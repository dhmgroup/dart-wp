# Changelog

## [1.1.0]

- Changed the `get` method on endpoints to `fetch`. This has been done to preserve the `dart` keyword `get`.
- Changed the return turn for each endpoint to `WPResponse`. This changed was made to enable more control over the response returned and also get the necessary meta data returned from the response.
Refer to `example` or `README.md`
## [1.0.0]

### Breaking Changes/ What's New

As of v1+, every api `endpoint` is set to a `getter`. For example, 

```dart
final WordPressAPI api = WordPressAPI('wp-site.domain');

// Getting posts the OLD WAY
final List<Post> posts = await api.getPosts();

// The new way as of v1.0+
final List<Post> posts = await api.posts.get();
```

The new way is applicable to `categories`, `pages`, `users`, `tags`, `taxonomies`, `media`, `application-passwords` and any other endpoints to be added.
## [0.3.1]

- Fixed return value in `Media Model` for `caption` and `description`
## [0.3.0+2]

- Renamed libraries to use `lowercase_with_underscores` as suggested on [pub.dev](https://pub.dev/packages/wordpress_api/score)

## [0.3.0+1]

- Implemented rethrow on caught exceptions as suggested on [pub.dev](https://pub.dev/packages/wordpress_api/score)

## [0.3.0]

### What's new?

- Added null-safety support. [issue #20](https://github.com/dhmgroup/dart-wp/issues/20)
- An option to intiailize a custom `Dio` instance. Thanks [kellvembarbosa](https://github.com/kellvembarbosa)
- Added support for a `Job` model to render [WP Job Manager](https://wpjobmanager.com/)
- Added support for `Application Passwords` model introduced in [WordPress 5.6](https://make.wordpress.org/core/2020/11/05/application-passwords-integration-guide/)
- Added [WooCommerce Models](https://woocommerce.github.io/woocommerce-rest-api-docs/) for `Product`, `Orders` and others.

### What's changed?

- Refactored codebase in preparation for the stable version 1.0
- Renamed all schemas to match endpoint, e.g `PostSchema` is now `Post`

## [0.2.1+1]

- Fixed missing model exports in [issue #14](https://github.com/dhmgroup/dart-wp/issues/14)
- Fixed `meta field` data type casting error in [issue 15](https://github.com/dhmgroup/dart-wp/issues/15)
- Added a working flutter example

### Noteable Changes

- `meta` field now returns `dynamic` data type instead of `List`

## [0.2.1]

- Fixed meta data return type in [issue #8](https://github.com/dhmgroup/dart-wp/issues/8)
- Updated package dependencies

## [0.2.0]

### Breaking Changes

- Renamed `Base*Model` to `*`, e.g `BaseCategoryModel` is now `Category`

### What's New

- Added Search, Taxonomy, Settings, and Pages endpoints.
- `WPReponse` class was added to handle all responses.
- Additional WordPress schemas that can be extended.

## [0.1.4]

- Add models for Category, Comment, Media, Post, Tag and User.
- Each model has a 'BASE' prefix and 'MODEL' suffix with all the default response params, e.g BaseUserModel

## [0.1.3+2]

- Removed explicit `null` variable initializations as suggested by dart analyzer

## [0.1.3+1]

- Fixed issue when retireving single post in [issue #4](https://github.com/dhmgroup/dart-wp/issues/4)

## [0.1.3]

- Removed all flutter references because the package also works standalone for dart. Thanks [jld3103](https://github.com/jld3103)
- Added Wordpress Standard endpoints as requested in [issue #3](https://github.com/dhmgroup/dart-wp/issues/3). These include getPosts(), getCategories(), getTags(), getComments(), and getUsers() functions.

## [0.1.2+3]

- Minor fixes

## [0.1.2+2]

- Added endpoint query handler

## [0.1.2+1]

- Added getAsyc exception

## [0.1.2]

- Fixed the error in JSON endpoint retrieval

## [0.1.1+2]

- Changed getAsync return raw json body
- Changed example code url

## [0.1.1+1]

- Changed getAsync return data to a map.

## [0.1.1]

- Updated example and readme

## [0.1.0]

- Added an example

## [0.0.2]

- Updated documentation

## [0.0.1]

- Initial release.
