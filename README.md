# WordPress API client for Dart ([Flutter](http://flutter.io))

## Description

A WordPress API client for flutter with support for WooCommerce and custom namespaces.

## Features

- Retrieve data from any endpoint.
- Retrieve data from any namespace.

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
    final wp = WordPressAPI('260blog.com');
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
  

## To Do

- Add authentication function
- Add postAsync function

Contributions are welcome, report any issues [here](https://github.com/dhmgroup/dart-wp/issues)
