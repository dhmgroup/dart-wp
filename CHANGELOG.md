# Changelog

## [0.2.1]

- Fixed meta data return type in [issue #8](https://github.com/dhmgroup/dart-wp/issues/8)
- Updated package dependencies

## [0.2.0]

### Breaking Changes

- Renamed `Base*Model` to `*Schema`, e.g `BaseCategoryModel` is now `CategorySchema`

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
