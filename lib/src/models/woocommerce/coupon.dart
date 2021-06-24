import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:wordpress_api/src/models/woocommerce/meta.dart';

class Coupon {
  final int? id;
  final String? code;
  final String? amount;
  final String? dateCreated;
  final String? dateCreatedGmt;
  final String? dateModified;
  final String? dateModifiedGmt;
  final String? discountType;
  final String? description;
  final String? dateExpires;
  final String? dateExpiresGmt;
  final int? usageCount;
  final bool? individualUse;
  final List<int>? productIds;
  final List<int>? excludedProductIds;
  final int? usageLimit;
  final int? usageLimitPerUser;
  final int? limitUsageToXItems;
  final bool? freeShipping;
  final List<int>? productCategories;
  final List<int>? excludedProductCategories;
  final bool? excludeSaleItems;
  final String? minimumAmount;
  final String? maximumAmount;
  final List<String>? emailRestrictions;
  final List<int>? usedBy;
  final List<WooMeta>? metaData;
  Coupon({
    this.id,
    this.code,
    this.amount,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.discountType,
    this.description,
    this.dateExpires,
    this.dateExpiresGmt,
    this.usageCount,
    this.individualUse,
    this.productIds,
    this.excludedProductIds,
    this.usageLimit,
    this.usageLimitPerUser,
    this.limitUsageToXItems,
    this.freeShipping,
    this.productCategories,
    this.excludedProductCategories,
    this.excludeSaleItems,
    this.minimumAmount,
    this.maximumAmount,
    this.emailRestrictions,
    this.usedBy,
    this.metaData,
  });

  Coupon copyWith({
    int? id,
    String? code,
    String? amount,
    String? dateCreated,
    String? dateCreatedGmt,
    String? dateModified,
    String? dateModifiedGmt,
    String? discountType,
    String? description,
    String? dateExpires,
    String? dateExpiresGmt,
    int? usageCount,
    bool? individualUse,
    List<dynamic>? productIds,
    List<dynamic>? excludedProductIds,
    int? usageLimit,
    int? usageLimitPerUser,
    int? limitUsageToXItems,
    bool? freeShipping,
    List<int>? productCategories,
    List<int>? excludedProductCategories,
    bool? excludeSaleItems,
    String? minimumAmount,
    String? maximumAmount,
    List<String>? emailRestrictions,
    List<int>? usedBy,
    List<WooMeta>? metaData,
  }) {
    return Coupon(
      id: id ?? this.id,
      code: code ?? this.code,
      amount: amount ?? this.amount,
      dateCreated: dateCreated ?? this.dateCreated,
      dateCreatedGmt: dateCreatedGmt ?? this.dateCreatedGmt,
      dateModified: dateModified ?? this.dateModified,
      dateModifiedGmt: dateModifiedGmt ?? this.dateModifiedGmt,
      discountType: discountType ?? this.discountType,
      description: description ?? this.description,
      dateExpires: dateExpires ?? this.dateExpires,
      dateExpiresGmt: dateExpiresGmt ?? this.dateExpiresGmt,
      usageCount: usageCount ?? this.usageCount,
      individualUse: individualUse ?? this.individualUse,
      productIds: productIds as List<int>? ?? this.productIds,
      excludedProductIds:
          excludedProductIds as List<int>? ?? this.excludedProductIds,
      usageLimit: usageLimit ?? this.usageLimit,
      usageLimitPerUser: usageLimitPerUser ?? this.usageLimitPerUser,
      limitUsageToXItems: limitUsageToXItems ?? this.limitUsageToXItems,
      freeShipping: freeShipping ?? this.freeShipping,
      productCategories: productCategories ?? this.productCategories,
      excludedProductCategories:
          excludedProductCategories ?? this.excludedProductCategories,
      excludeSaleItems: excludeSaleItems ?? this.excludeSaleItems,
      minimumAmount: minimumAmount ?? this.minimumAmount,
      maximumAmount: maximumAmount ?? this.maximumAmount,
      emailRestrictions: emailRestrictions ?? this.emailRestrictions,
      usedBy: usedBy ?? this.usedBy,
      metaData: metaData ?? this.metaData,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'code': code,
      'amount': amount,
      'date_created': dateCreated,
      'date_created_gmt': dateCreatedGmt,
      'date_modified': dateModified,
      'date_modified_gmt': dateModifiedGmt,
      'discount_type': discountType,
      'description': description,
      'date_expires': dateExpires,
      'date_expires_gmt': dateExpiresGmt,
      'usage_count': usageCount,
      'individual_use': individualUse,
      'product_ids': productIds,
      'excluded_product_ids': excludedProductIds,
      'usage_limit': usageLimit,
      'usage_limit_per_user': usageLimitPerUser,
      'limit_usage_to_x_items': limitUsageToXItems,
      'free_shipping': freeShipping,
      'product_categories': productCategories,
      'excluded_product_categories': excludedProductCategories,
      'exclude_sale_items': excludeSaleItems,
      'minimum_amount': minimumAmount,
      'maximum_amount': maximumAmount,
      'email_restrictions': emailRestrictions,
      'used_by': usedBy,
      'meta_data': metaData?.map((x) => x.toMap()).toList(),
    };
  }

  factory Coupon.fromMap(Map<String, dynamic> map) {
    return Coupon(
      id: map['id']?.toInt(),
      code: map['code'],
      amount: map['amount'],
      dateCreated: map['date_created'],
      dateCreatedGmt: map['date_created_gmt'],
      dateModified: map['date_modified'],
      dateModifiedGmt: map['date_modified_gmt'],
      discountType: map['discount_type'],
      description: map['description'],
      dateExpires: map['date_expires'],
      dateExpiresGmt: map['date_expires_gmt'],
      usageCount: map['usage_count']?.toInt(),
      individualUse: map['individual_use'],
      productIds: List<dynamic>.from(map['product_ids']??[]) as List<int>?,
      excludedProductIds:
          List<dynamic>.from(map['excluded_product_ids']??[]) as List<int>?,
      usageLimit: map['usage_limit']?.toInt(),
      usageLimitPerUser: map['usage_limit_per_user']?.toInt(),
      limitUsageToXItems: map['limit_usage_to_x_items']?.toInt(),
      freeShipping: map['free_shipping'],
      productCategories: List<int>.from(map['product_categories']??[]),
      excludedProductCategories:
          List<int>.from(map['excluded_product_categories']??[]),
      excludeSaleItems: map['exclude_sale_items'],
      minimumAmount: map['minimum_amount'],
      maximumAmount: map['maximum_amount'],
      emailRestrictions: List<String>.from(map['email_restrictions']??[]),
      usedBy: List<int>.from(map['used_by']??[]),
      metaData:
          List<WooMeta>.from(map['meta_data']?.map((x) => WooMeta.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Coupon.fromJson(String source) => Coupon.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Coupon(id: $id, code: $code, amount: $amount, dateCreated: $dateCreated, dateCreatedGmt: $dateCreatedGmt, dateModified: $dateModified, dateModifiedGmt: $dateModifiedGmt, discountType: $discountType, description: $description, dateExpires: $dateExpires, dateExpiresGmt: $dateExpiresGmt, usageCount: $usageCount, individualUse: $individualUse, productIds: $productIds, excludedProductIds: $excludedProductIds, usageLimit: $usageLimit, usageLimitPerUser: $usageLimitPerUser, limitUsageToXItems: $limitUsageToXItems, freeShipping: $freeShipping, productCategories: $productCategories, excludedProductCategories: $excludedProductCategories, excludeSaleItems: $excludeSaleItems, minimumAmount: $minimumAmount, maximumAmount: $maximumAmount, emailRestrictions: $emailRestrictions, usedBy: $usedBy, metaData: $metaData)';
  }

  @override
  int get hashCode {
    return id.hashCode ^
        code.hashCode ^
        amount.hashCode ^
        dateCreated.hashCode ^
        dateCreatedGmt.hashCode ^
        dateModified.hashCode ^
        dateModifiedGmt.hashCode ^
        discountType.hashCode ^
        description.hashCode ^
        dateExpires.hashCode ^
        dateExpiresGmt.hashCode ^
        usageCount.hashCode ^
        individualUse.hashCode ^
        productIds.hashCode ^
        excludedProductIds.hashCode ^
        usageLimit.hashCode ^
        usageLimitPerUser.hashCode ^
        limitUsageToXItems.hashCode ^
        freeShipping.hashCode ^
        productCategories.hashCode ^
        excludedProductCategories.hashCode ^
        excludeSaleItems.hashCode ^
        minimumAmount.hashCode ^
        maximumAmount.hashCode ^
        emailRestrictions.hashCode ^
        usedBy.hashCode ^
        metaData.hashCode;
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return o is Coupon &&
        o.id == id &&
        o.code == code &&
        o.amount == amount &&
        o.dateCreated == dateCreated &&
        o.dateCreatedGmt == dateCreatedGmt &&
        o.dateModified == dateModified &&
        o.dateModifiedGmt == dateModifiedGmt &&
        o.discountType == discountType &&
        o.description == description &&
        o.dateExpires == dateExpires &&
        o.dateExpiresGmt == dateExpiresGmt &&
        o.usageCount == usageCount &&
        o.individualUse == individualUse &&
        listEquals(o.productIds, productIds) &&
        listEquals(o.excludedProductIds, excludedProductIds) &&
        o.usageLimit == usageLimit &&
        o.usageLimitPerUser == usageLimitPerUser &&
        o.limitUsageToXItems == limitUsageToXItems &&
        o.freeShipping == freeShipping &&
        listEquals(o.productCategories, productCategories) &&
        listEquals(o.excludedProductCategories, excludedProductCategories) &&
        o.excludeSaleItems == excludeSaleItems &&
        o.minimumAmount == minimumAmount &&
        o.maximumAmount == maximumAmount &&
        listEquals(o.emailRestrictions, emailRestrictions) &&
        listEquals(o.usedBy, usedBy) &&
        listEquals(o.metaData, metaData);
  }
}
