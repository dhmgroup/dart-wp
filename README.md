# WordPress REST API client for [Dart](https://dart.dev/) | [Flutter](https://flutter.dev)
<!-- ALL-CONTRIBUTORS-BADGE:START - Do not remove or modify this section -->
[![All Contributors](https://img.shields.io/badge/all_contributors-5-orange.svg?style=flat-square)](#contributors-)
<!-- ALL-CONTRIBUTORS-BADGE:END -->

[![GitHub stars](https://img.shields.io/github/stars/dhmgroup/dart-wp.svg?style=social&label=Star&maxAge=2592000)](https://github.com/dhmgroup/dart-wp/stargazers/)
[![Pub](https://img.shields.io/pub/v/wordpress_api.svg?style=flat-square)](https://pub.dartlang.org/packages/wordpress_api)
[![Build Status](https://travis-ci.org/dhmgroup/dart-wp.svg?branch=master)](https://travis-ci.org/dhmgroup/dart-wp)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://GitHub.com/dhmgroup/dart-wp/graphs/commit-activity)

## Description

A WordPress REST API client for dart with support for WooCommerce and custom namespaces/endpoints.

## Features

- Retrieve data from standard WordPress endpoints.
- Retrieve data from any custom namespace

## Installation

In the `dependencies:` section of your `pubspec.yaml`, add the following line:

```yaml
dependencies:
  wordpress_api: <latest_version>
```

## Usage

- Import the package

```dart
import 'package:wordpress_api/wordpress_api';
```

- Initialize WPAPI

```dart
  WordPressAPI api = WordPressAPI('wp-site.com');
```

- Retrieve posts from `.posts` getter

  - You can fetch a list of posts by simply calling `.posts`. More arguments can be passed to further filter the data returned

  ```dart
    void main() async {
      final api = WordPressAPI('wp-site.com');
      final WPResponse res = await api.posts.fetch();
      for (final post in res.data) {
        print(post.title);
      }
    }
  ```

  - As of `v0.3.0`, you can query a single post from the same endpoint by passing an `id`

  ```dart
    void main() async {
      final api = WordPressAPI('wp-site.com');
      final WPResponse res = await api.posts.fetch(id: 1);
      print(res.data.title);
    }
  ```

- Retrieve data from a custom endpoint

```dart
  void main() async {
    final api = WordPressAPI('wp-site.com');
    final WPResponse res = await api.get(endpoint: 'your-custom-endpoint');
    print(res.data);
  }
```

## ToDo

- Authentication using `Application Passwords`. *WordPress 5.6+ only*
- Fully integrated WooCommerce support.
- Full CRUD operations.
- Support for other popular WordPress Plugins.

Contributions are welcome, report any issues [here](https://github.com/dhmgroup/dart-wp/issues)

## Special Thanks

- [WordPress REST API Handbook](https://developer.wordpress.org/rest-api/reference/) - Read the Handbank for additional arguments/query parameter.

## Contributors ✨

Thanks goes to these wonderful people ([emoji key](https://allcontributors.org/docs/en/emoji-key)):

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->
<table>
  <tbody>
    <tr>
      <td align="center"><a href="https://github.com/ankiimation"><img src="https://avatars.githubusercontent.com/u/41232001?v=4?s=100" width="100px;" alt="anKii"/><br /><sub><b>anKii</b></sub></a><br /><a href="https://github.com/dhmgroup/dart-wp/commits?author=ankiimation" title="Code">💻</a></td>
      <td align="center"><a href="https://kellvem.pt"><img src="https://avatars.githubusercontent.com/u/3621135?v=4?s=100" width="100px;" alt="Kellvem Barbosa"/><br /><sub><b>Kellvem Barbosa</b></sub></a><br /><a href="https://github.com/dhmgroup/dart-wp/commits?author=kellvembarbosa" title="Code">💻</a></td>
      <td align="center"><a href="https://github.com/NKlage"><img src="https://avatars.githubusercontent.com/u/18156976?v=4?s=100" width="100px;" alt="NKlage"/><br /><sub><b>NKlage</b></sub></a><br /><a href="https://github.com/dhmgroup/dart-wp/commits?author=NKlage" title="Code">💻</a> <a href="https://github.com/dhmgroup/dart-wp/issues?q=author%3ANKlage" title="Bug reports">🐛</a></td>
      <td align="center"><a href="https://nemesisx1.showwcase.com/"><img src="https://avatars.githubusercontent.com/u/55746329?v=4?s=100" width="100px;" alt="Elikem (Junior) Medehou"/><br /><sub><b>Elikem (Junior) Medehou</b></sub></a><br /><a href="https://github.com/dhmgroup/dart-wp/commits?author=NemesisX1" title="Code">💻</a></td>
      <td align="center"><a href="http://diziyleogren.com"><img src="https://avatars.githubusercontent.com/u/43478072?v=4?s=100" width="100px;" alt="Okan Demir"/><br /><sub><b>Okan Demir</b></sub></a><br /><a href="https://github.com/dhmgroup/dart-wp/commits?author=okandemirofficial" title="Code">💻</a></td>
    </tr>
  </tbody>
</table>

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->

<!-- ALL-CONTRIBUTORS-LIST:END -->

This project follows the [all-contributors](https://github.com/all-contributors/all-contributors) specification. Contributions of any kind welcome!
