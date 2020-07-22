# WordPress API client for [Dart](https://dart.dev/) | [Flutter](https://flutter.dev)

[![GitHub stars](https://img.shields.io/github/stars/dhmgroup/dart-wp.svg?style=social&label=Star&maxAge=2592000)](https://github.com/dhmgroup/dart-wp/stargazers/)
[![Pub](https://img.shields.io/pub/v/wordpress_api.svg?style=flat-square)](https://pub.dartlang.org/packages/wordpress_api)
[![Build Status](https://travis-ci.org/dhmgroup/dart-wp.svg?branch=master)](https://travis-ci.org/dhmgroup/dart-wp)
[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://GitHub.com/dhmgroup/dart-wp/graphs/commit-activity)

## Description

A WordPress API client for dart with support for WooCommerce and custom namespaces/endpoints.

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
  WordPressAPI api = WordPressAPI('site.com');
```

- Retrieve posts

```dart
  void main() async {
    final wp = WordPressAPI('site.com');
    final posts = await wp.getPosts();
    for (final post in posts) {
      print(post.title['rendered']);
    }
  }
```

- Retrieve Posts with Embedded Media (Get media's source url)

```dart
  final wp = WordPressAPI('site.com');
  final posts = await wp.getPosts(args: {"_embed": true});
  for (final post in posts) {
    print(post.embedded.media[0]);
  }
```

- Retrieve WP users

```dart
  final wp = WordPressAPI('site.com');
  final users = (await wp.getUsers())['data'];
  for (final user in users) {
    print(user.username);
  }
```

- Retrieve data from a custom endpoint

```dart
  final wp = WordPressAPI('site.com');
  final res = await wp.getAsyc(endpoint: 'your-cutom-endpoint');
  for (final doc in res.data as List) {
    print(doc["title"]["rendered"]);
  }
```

Contributions are welcome, report any issues [here](https://github.com/dhmgroup/dart-wp/issues)

## Special Thanks

- [WordPress REST API Handbook](https://developer.wordpress.org/rest-api/reference/) - Read the Handbank for additional arguments/query parameter.
