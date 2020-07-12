# WordPress API client for [Dart](https://dart.dev/) | [Flutter](https://flutter.dev)

[![Pub](https://img.shields.io/pub/v/wordpress_api.svg?style=flat-square)](https://pub.dartlang.org/packages/wordpress_api) [![Build Status](https://travis-ci.org/dhmgroup/dart-wp.svg?branch=master)](https://travis-ci.org/dhmgroup/dart-wp) [![codecov](https://codecov.io/gh/dhmgroup/dart-wp/branch/master/graph/badge.svg)](https://codecov.io/gh/dhmgroup/dart-wp)

## Description

A WordPress API client for dart with support for WooCommerce and custom namespaces.

## Features

- Retrieve data from standard WordPress endpoints.
- Retrieve data from any custom namespace

## Installation

In the `dependencies:` section of your `pubspec.yaml`, add the following line:

```yaml
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

- Retrieve data from a custom endpoint

```dart
  void main() async {
    final wp = WordPressAPI('site.com');
    final posts = (await wp.getAsync('posts'))['data'];
    for (final post in posts) {
      print(post['title']['rendered']);
    }
  }
```

- Retrieve WP users

```dart
  void main() async {
    final wp = WordPressAPI('260blog.com');
    final users = (await wp.getUsers())['data'];
    for (final user in users) {
      print(user['name']);
    }
  }
```

Contributions are welcome, report any issues [here](https://github.com/dhmgroup/dart-wp/issues)

## Special Thanks

- [WordPress REST API Handbook](https://developer.wordpress.org/rest-api/reference/)
