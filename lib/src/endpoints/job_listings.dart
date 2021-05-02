part of '../main.dart';

class _JobListings {
  WordPressAPI _api;

  _JobListings(this._api);

  /// [GET] job listings from `WP Job Manager` endpoint
  ///
  /// `/wp/v2/job-listings`
  Future get({int? id, Map<String, dynamic>? args}) async {
    if (id != null) {
      final WPResponse res = await _api.get('job-listings/$id', args: args);
      return Job.fromMap(res.data);
    }
    final WPResponse res = await _api.get('job-listings', args: args);
    return parseJobs(res.data);
  }
}
