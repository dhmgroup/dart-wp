import 'dart:convert';

import 'package:collection/collection.dart';

class ProductReview {
  final int id;
  final String dateCreated;
  final String dateCreatedGmt;
  final int productId;

  ///[String] Status of the review.
  ///
  ///Options: `approved`, `hold`, `spam`, `unspam`, `trash` and `untrash`.
  ///
  ///Defaults to `approved`.
  final String status;
  final String reviewer;
  final String reviewerEmail;
  final String review;
  final int rating;
  final bool verified;
  final Map<String, String> reviewerAvatarUrls;
  ProductReview({
    this.id,
    this.dateCreated,
    this.dateCreatedGmt,
    this.productId,
    this.status,
    this.reviewer,
    this.reviewerEmail,
    this.review,
    this.rating,
    this.verified,
    this.reviewerAvatarUrls,
  });

  ProductReview copyWith({
    int id,
    String dateCreated,
    String dateCreatedGmt,
    int productId,
    String status,
    String reviewer,
    String reviewerEmail,
    String review,
    int rating,
    bool verified,
    Map<String, String> reviewerAvatarUrls,
  }) {
    return ProductReview(
      id: id ?? this.id,
      dateCreated: dateCreated ?? this.dateCreated,
      dateCreatedGmt: dateCreatedGmt ?? this.dateCreatedGmt,
      productId: productId ?? this.productId,
      status: status ?? this.status,
      reviewer: reviewer ?? this.reviewer,
      reviewerEmail: reviewerEmail ?? this.reviewerEmail,
      review: review ?? this.review,
      rating: rating ?? this.rating,
      verified: verified ?? this.verified,
      reviewerAvatarUrls: reviewerAvatarUrls ?? this.reviewerAvatarUrls,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'date_created': dateCreated,
      'date_created_gmt': dateCreatedGmt,
      'product_id': productId,
      'status': status,
      'reviewer': reviewer,
      'reviewer_email': reviewerEmail,
      'review': review,
      'rating': rating,
      'verified': verified,
      'reviewer_avatar_urls': reviewerAvatarUrls,
    };
  }

  factory ProductReview.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return ProductReview(
      id: map['id'],
      dateCreated: map['date_created'],
      dateCreatedGmt: map['date_created_gmt'],
      productId: map['product_id'],
      status: map['status'],
      reviewer: map['reviewer'],
      reviewerEmail: map['reviewer_email'],
      review: map['review'],
      rating: map['rating'],
      verified: map['verified'],
      reviewerAvatarUrls: Map<String, String>.from(map['reviewer_avatar_urls']),
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductReview.fromJson(String source) =>
      ProductReview.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProductReview(id: $id, dateCreated: $dateCreated, dateCreatedGmt: $dateCreatedGmt, productId: $productId, status: $status, reviewer: $reviewer, reviewerEmail: $reviewerEmail, review: $review, rating: $rating, verified: $verified, reviewerAvatarUrls: $reviewerAvatarUrls)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    final mapEquals = const DeepCollectionEquality().equals;

    return o is ProductReview &&
        o.id == id &&
        o.dateCreated == dateCreated &&
        o.dateCreatedGmt == dateCreatedGmt &&
        o.productId == productId &&
        o.status == status &&
        o.reviewer == reviewer &&
        o.reviewerEmail == reviewerEmail &&
        o.review == review &&
        o.rating == rating &&
        o.verified == verified &&
        mapEquals(o.reviewerAvatarUrls, reviewerAvatarUrls);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        dateCreated.hashCode ^
        dateCreatedGmt.hashCode ^
        productId.hashCode ^
        status.hashCode ^
        reviewer.hashCode ^
        reviewerEmail.hashCode ^
        review.hashCode ^
        rating.hashCode ^
        verified.hashCode ^
        reviewerAvatarUrls.hashCode;
  }
}
