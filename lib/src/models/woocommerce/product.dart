import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:wordpress_api/src/models/woocommerce/product/product.dart';

class Product {
  final int? id;
  final String? name;
  final String? slug;
  final String? permalink;

  final String? dateCreated;
  final String? dateCreatedGmt;
  final String? dateModified;
  final String? dateModifiedGmt;
  final String? type;

  /// [String] Variation status.
  ///
  /// Options: `draft`, `pending`, `private` and `publish`.
  ///
  /// Default is `publish`
  final String? status;
  final bool? featured;
  final String? catalogVisibility;
  final String? description;
  final String? shortDescription;
  final String? sku;
  final String? price;
  final String? regularPrice;
  final String? salePrice;
  final String? dateOnSaleFrom;
  final String? dateOnSaleFromGmt;
  final String? dateOnSaleTo;
  final String? dateOnSaleToGmt;
  final String? priceHtml;
  final bool? onSale;
  final bool? purchasable;
  final int? totalSales;

  ///[bool] If the variation is virtual.
  ///
  ///Default is `false`
  final bool? virtual;

  /// [bool] If the variation is downloadable.
  ///
  /// Default is `false`
  final bool? downloadable;
  final List<ProductDownloads>? downloads;
  final int? downloadLimit;
  final int? downloadExpiry;
  final String? externalUrl;
  final String? buttondText;

  /// [String] Tax status.
  ///
  /// Options: `taxable`, `shipping` and `none`.
  ///
  /// Default is taxable.
  final String? taxStatus;
  final String? taxClass;

  ///[bool] Stock management at variation level.
  ///
  ///Default is `false`.
  final bool? manageStock;
  final int? stockQuantity;

  ///[String] Controls the stock status of the product.
  ///
  ///Options: `instock`, `outofstock`, `onbackorder`.
  ///
  ///Default is instock
  final String? stockStatus;

  ///[String] If managing stock, this controls if backorders are allowed.
  ///
  ///Options: `no`, `notify` and `yes`.
  ///
  ///Default is no.
  final String? backorders;
  final bool? backordersAllowed;
  final bool? backordered;
  final bool? soldIndividually;
  final String? weight;
  final ProductDimensions? dimensions;
  final bool? shippingdRequired;
  final bool? shippingdTaxable;
  final String? shippingClass;
  final int? shippingClassId;
  final bool? reviewsAllowed;
  final String? averagedRating;
  final int? ratingCount;
  final List<int>? relatedIds;
  final List<int>? upsellIds;
  final List<int>? crossSellIds;
  final int? parentId;
  final String? purchaseNote;
  final List<ProductCategory>? categories;
  final List<ProductTag>? tags;
  final List<ProductImage>? images;
  final List<ProductAttributes>? attributes;
  final List<ProductDefaultAttributes>? defaultAttributes;
  final List<int>? variations;
  final List<Product>? groupedProducts;
  final int? menuOrder;
  final List<ProductMeta>? metaData;
  Product({
    this.id,
    this.name,
    this.slug,
    this.permalink,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.type,
    this.status,
    this.featured,
    this.catalogVisibility,
    this.description,
    this.shortDescription,
    this.sku,
    this.price,
    this.regularPrice,
    this.salePrice,
    this.dateOnSaleFrom,
    this.dateOnSaleFromGmt,
    this.dateOnSaleTo,
    this.dateOnSaleToGmt,
    this.priceHtml,
    this.onSale,
    this.purchasable,
    this.totalSales,
    this.virtual,
    this.downloadable,
    this.downloads,
    this.downloadLimit,
    this.downloadExpiry,
    this.externalUrl,
    this.buttondText,
    this.taxStatus,
    this.taxClass,
    this.manageStock,
    this.stockQuantity,
    this.stockStatus,
    this.backorders,
    this.backordersAllowed,
    this.backordered,
    this.soldIndividually,
    this.weight,
    this.dimensions,
    this.shippingdRequired,
    this.shippingdTaxable,
    this.shippingClass,
    this.shippingClassId,
    this.reviewsAllowed,
    this.averagedRating,
    this.ratingCount,
    this.relatedIds,
    this.upsellIds,
    this.crossSellIds,
    this.parentId,
    this.purchaseNote,
    this.categories,
    this.tags,
    this.images,
    this.attributes,
    this.defaultAttributes,
    this.variations,
    this.groupedProducts,
    this.menuOrder,
    this.metaData,
  });

  Product copyWith({
    int? id,
    String? name,
    String? slug,
    String? permalink,
    String? dateCreated,
    String? dateCreatedGmt,
    String? dateModified,
    String? dateModifiedGmt,
    String? type,
    String? status,
    bool? featured,
    String? catalogVisibility,
    String? description,
    String? shortDescription,
    String? sku,
    String? price,
    String? regularPrice,
    String? salePrice,
    String? dateOnSaleFrom,
    String? dateOnSaleFromGmt,
    String? dateOnSaleTo,
    String? dateOnSaleToGmt,
    String? priceHtml,
    bool? onSale,
    bool? purchasable,
    int? totalSales,
    bool? virtual,
    bool? downloadable,
    List<ProductDownloads>? downloads,
    int? downloadLimit,
    int? downloadExpiry,
    String? externalUrl,
    String? buttondText,
    String? taxStatus,
    String? taxClass,
    bool? manageStock,
    int? stockQuantity,
    String? stockStatus,
    String? backorders,
    bool? backordersAllowed,
    bool? backordered,
    bool? soldIndividually,
    String? weight,
    ProductDimensions? dimensions,
    bool? shippingdRequired,
    bool? shippingdTaxable,
    String? shippingClass,
    int? shippingClassId,
    bool? reviewsAllowed,
    String? averagedRating,
    int? ratingCount,
    List<int>? relatedIds,
    List<int>? upsellIds,
    List<int>? crossSellIds,
    int? parentId,
    String? purchaseNote,
    List<ProductCategory>? categories,
    List<ProductTag>? tags,
    List<ProductImage>? images,
    List<ProductAttributes>? attributes,
    List<ProductDefaultAttributes>? defaultAttributes,
    List<int>? variations,
    List<Product>? groupedProducts,
    int? menuOrder,
    List<ProductMeta>? metaData,
  }) {
    return Product(
      id: id ?? this.id,
      name: name ?? this.name,
      slug: slug ?? this.slug,
      permalink: permalink ?? this.permalink,
      dateCreated: dateCreated ?? this.dateCreated,
      dateCreatedGmt: dateCreatedGmt ?? this.dateCreatedGmt,
      dateModified: dateModified ?? this.dateModified,
      dateModifiedGmt: dateModifiedGmt ?? this.dateModifiedGmt,
      type: type ?? this.type,
      status: status ?? this.status,
      featured: featured ?? this.featured,
      catalogVisibility: catalogVisibility ?? this.catalogVisibility,
      description: description ?? this.description,
      shortDescription: shortDescription ?? this.shortDescription,
      sku: sku ?? this.sku,
      price: price ?? this.price,
      regularPrice: regularPrice ?? this.regularPrice,
      salePrice: salePrice ?? this.salePrice,
      dateOnSaleFrom: dateOnSaleFrom ?? this.dateOnSaleFrom,
      dateOnSaleFromGmt: dateOnSaleFromGmt ?? this.dateOnSaleFromGmt,
      dateOnSaleTo: dateOnSaleTo ?? this.dateOnSaleTo,
      dateOnSaleToGmt: dateOnSaleToGmt ?? this.dateOnSaleToGmt,
      priceHtml: priceHtml ?? this.priceHtml,
      onSale: onSale ?? this.onSale,
      purchasable: purchasable ?? this.purchasable,
      totalSales: totalSales ?? this.totalSales,
      virtual: virtual ?? this.virtual,
      downloadable: downloadable ?? this.downloadable,
      downloads: downloads ?? this.downloads,
      downloadLimit: downloadLimit ?? this.downloadLimit,
      downloadExpiry: downloadExpiry ?? this.downloadExpiry,
      externalUrl: externalUrl ?? this.externalUrl,
      buttondText: buttondText ?? this.buttondText,
      taxStatus: taxStatus ?? this.taxStatus,
      taxClass: taxClass ?? this.taxClass,
      manageStock: manageStock ?? this.manageStock,
      stockQuantity: stockQuantity ?? this.stockQuantity,
      stockStatus: stockStatus ?? this.stockStatus,
      backorders: backorders ?? this.backorders,
      backordersAllowed: backordersAllowed ?? this.backordersAllowed,
      backordered: backordered ?? this.backordered,
      soldIndividually: soldIndividually ?? this.soldIndividually,
      weight: weight ?? this.weight,
      dimensions: dimensions ?? this.dimensions,
      shippingdRequired: shippingdRequired ?? this.shippingdRequired,
      shippingdTaxable: shippingdTaxable ?? this.shippingdTaxable,
      shippingClass: shippingClass ?? this.shippingClass,
      shippingClassId: shippingClassId ?? this.shippingClassId,
      reviewsAllowed: reviewsAllowed ?? this.reviewsAllowed,
      averagedRating: averagedRating ?? this.averagedRating,
      ratingCount: ratingCount ?? this.ratingCount,
      relatedIds: relatedIds ?? this.relatedIds,
      upsellIds: upsellIds ?? this.upsellIds,
      crossSellIds: crossSellIds ?? this.crossSellIds,
      parentId: parentId ?? this.parentId,
      purchaseNote: purchaseNote ?? this.purchaseNote,
      categories: categories ?? this.categories,
      tags: tags ?? this.tags,
      images: images ?? this.images,
      attributes: attributes ?? this.attributes,
      defaultAttributes: defaultAttributes ?? this.defaultAttributes,
      variations: variations ?? this.variations,
      groupedProducts: groupedProducts ?? this.groupedProducts,
      menuOrder: menuOrder ?? this.menuOrder,
      metaData: metaData ?? this.metaData,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'slug': slug,
      'permalink': permalink,
      'date_created': dateCreated,
      'date_created_gmt': dateCreatedGmt,
      'date_modified': dateModified,
      'date_modified_gmt': dateModifiedGmt,
      'type': type,
      'status': status,
      'featured': featured,
      'catalog_visibility': catalogVisibility,
      'description': description,
      'short_description': shortDescription,
      'sku': sku,
      'price': price,
      'regular_price': regularPrice,
      'sale_price': salePrice,
      'date_on_sale_from': dateOnSaleFrom,
      'date_on_sale_from_gmt': dateOnSaleFromGmt,
      'date_on_sale_to': dateOnSaleTo,
      'date_on_sale_to_gmt': dateOnSaleToGmt,
      'price_html': priceHtml,
      'on_sale': onSale,
      'purchasable': purchasable,
      'total_sales': totalSales,
      'virtual': virtual,
      'downloadable': downloadable,
      'downloads': downloads?.map((x) => x.toMap()).toList(),
      'download_limit': downloadLimit,
      'download_expiry': downloadExpiry,
      'external_url': externalUrl,
      'buttond_text': buttondText,
      'tax_status': taxStatus,
      'tax_class': taxClass,
      'manage_stock': manageStock,
      'stock_quantity': stockQuantity,
      'stock_status': stockStatus,
      'backorders': backorders,
      'backorders_allowed': backordersAllowed,
      'backordered': backordered,
      'sold_individually': soldIndividually,
      'weight': weight,
      'dimensions': dimensions?.toMap(),
      'shippingd_required': shippingdRequired,
      'shippingd_taxable': shippingdTaxable,
      'shipping_class': shippingClass,
      'shipping_class_id': shippingClassId,
      'reviews_allowed': reviewsAllowed,
      'averaged_rating': averagedRating,
      'rating_count': ratingCount,
      'related_ids': relatedIds,
      'upsell_ids': upsellIds,
      'cross_sell_ids': crossSellIds,
      'parent_id': parentId,
      'purchase_note': purchaseNote,
      'categories': categories?.map((x) => x.toMap()).toList(),
      'tags': tags?.map((x) => x.toMap()).toList(),
      'images': images?.map((x) => x.toMap()).toList(),
      'attributes': attributes?.map((x) => x.toMap()).toList(),
      'default_attributes': defaultAttributes?.map((x) => x.toMap()).toList(),
      'variations': variations,
      'grouped_products': groupedProducts?.map((x) => x.toMap()).toList(),
      'menu_order': menuOrder,
      'meta_data': metaData?.map((x) => x.toMap()).toList(),
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'],
      name: map['name'],
      slug: map['slug'],
      permalink: map['permalink'],
      dateCreated: map['date_created'],
      dateCreatedGmt: map['date_created_gmt'],
      dateModified: map['date_modified'],
      dateModifiedGmt: map['date_modified_gmt'],
      type: map['type'],
      status: map['status'],
      featured: map['featured'],
      catalogVisibility: map['catalog_visibility'],
      description: map['description'],
      shortDescription: map['short_description'],
      sku: map['sku'],
      price: map['price'],
      regularPrice: map['regular_price'],
      salePrice: map['sale_price'],
      dateOnSaleFrom: map['date_on_sale_from'],
      dateOnSaleFromGmt: map['date_on_sale_from_gmt'],
      dateOnSaleTo: map['date_on_sale_to'],
      dateOnSaleToGmt: map['date_on_sale_to_gmt'],
      priceHtml: map['price_html'],
      onSale: map['on_sale'],
      purchasable: map['purchasable'],
      totalSales: map['total_sales'],
      virtual: map['virtual'],
      downloadable: map['downloadable'],
      downloads: List<ProductDownloads>.from(
          map['downloads']?.map((x) => ProductDownloads.fromMap(x))),
      downloadLimit: map['download_limit'],
      downloadExpiry: map['download_expiry'],
      externalUrl: map['external_url'],
      buttondText: map['buttond_text'],
      taxStatus: map['tax_status'],
      taxClass: map['tax_class'],
      manageStock: map['manage_stock'],
      stockQuantity: map['stock_quantity'],
      stockStatus: map['stock_status'],
      backorders: map['backorders'],
      backordersAllowed: map['backorders_allowed'],
      backordered: map['backordered'],
      soldIndividually: map['sold_individually'],
      weight: map['weight'],
      dimensions: ProductDimensions.fromMap(map['dimensions']),
      shippingdRequired: map['shippingd_required'],
      shippingdTaxable: map['shippingd_taxable'],
      shippingClass: map['shipping_class'],
      shippingClassId: map['shipping_class_id'],
      reviewsAllowed: map['reviews_allowed'],
      averagedRating: map['averaged_rating'],
      ratingCount: map['rating_count'],
      relatedIds: List<int>.from(map['related_ids']??[]),
      upsellIds: List<int>.from(map['upsell_ids']??[]),
      crossSellIds: List<int>.from(map['cross_sell_ids']??[]),
      parentId: map['parent_id'],
      purchaseNote: map['purchase_note'],
      categories: List<ProductCategory>.from(
          map['categories']?.map((x) => ProductCategory.fromMap(x))),
      tags:
          List<ProductTag>.from(map['tags']?.map((x) => ProductTag.fromMap(x))),
      images: List<ProductImage>.from(
          map['images']?.map((x) => ProductImage.fromMap(x))),
      attributes: List<ProductAttributes>.from(
          map['attributes']?.map((x) => ProductAttributes.fromMap(x))),
      defaultAttributes: List<ProductDefaultAttributes>.from(
          map['default_attributes']
              ?.map((x) => ProductDefaultAttributes.fromMap(x))),
      variations: List<int>.from(map['variations']?.toInt()),
      groupedProducts: List<Product>.from(
          map['grouped_products']?.map((x) => Product.fromMap(x))),
      menuOrder: map['menu_order'],
      metaData: List<ProductMeta>.from(
          map['meta_data']?.map((x) => ProductMeta.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(id: $id, name: $name, slug: $slug, permalink: $permalink, dateCreated: $dateCreated, dateCreatedGmt: $dateCreatedGmt, dateModified: $dateModified, dateModifiedGmt: $dateModifiedGmt, type: $type, status: $status, featured: $featured, catalogVisibility: $catalogVisibility, description: $description, shortDescription: $shortDescription, sku: $sku, price: $price, regularPrice: $regularPrice, salePrice: $salePrice, dateOnSaleFrom: $dateOnSaleFrom, dateOnSaleFromGmt: $dateOnSaleFromGmt, dateOnSaleTo: $dateOnSaleTo, dateOnSaleToGmt: $dateOnSaleToGmt, priceHtml: $priceHtml, onSale: $onSale, purchasable: $purchasable, totalSales: $totalSales, virtual: $virtual, downloadable: $downloadable, downloads: $downloads, downloadLimit: $downloadLimit, downloadExpiry: $downloadExpiry, externalUrl: $externalUrl, buttondText: $buttondText, taxStatus: $taxStatus, taxClass: $taxClass, manageStock: $manageStock, stockQuantity: $stockQuantity, stockStatus: $stockStatus, backorders: $backorders, backordersAllowed: $backordersAllowed, backordered: $backordered, soldIndividually: $soldIndividually, weight: $weight, dimensions: $dimensions, shippingdRequired: $shippingdRequired, shippingdTaxable: $shippingdTaxable, shippingClass: $shippingClass, shippingClassId: $shippingClassId, reviewsAllowed: $reviewsAllowed, averagedRating: $averagedRating, ratingCount: $ratingCount, relatedIds: $relatedIds, upsellIds: $upsellIds, crossSellIds: $crossSellIds, parentId: $parentId, purchaseNote: $purchaseNote, categories: $categories, tags: $tags, images: $images, attributes: $attributes, defaultAttributes: $defaultAttributes, variations: $variations, groupedProducts: $groupedProducts, menuOrder: $menuOrder, metaData: $metaData)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return o is Product &&
        o.id == id &&
        o.name == name &&
        o.slug == slug &&
        o.permalink == permalink &&
        o.dateCreated == dateCreated &&
        o.dateCreatedGmt == dateCreatedGmt &&
        o.dateModified == dateModified &&
        o.dateModifiedGmt == dateModifiedGmt &&
        o.type == type &&
        o.status == status &&
        o.featured == featured &&
        o.catalogVisibility == catalogVisibility &&
        o.description == description &&
        o.shortDescription == shortDescription &&
        o.sku == sku &&
        o.price == price &&
        o.regularPrice == regularPrice &&
        o.salePrice == salePrice &&
        o.dateOnSaleFrom == dateOnSaleFrom &&
        o.dateOnSaleFromGmt == dateOnSaleFromGmt &&
        o.dateOnSaleTo == dateOnSaleTo &&
        o.dateOnSaleToGmt == dateOnSaleToGmt &&
        o.priceHtml == priceHtml &&
        o.onSale == onSale &&
        o.purchasable == purchasable &&
        o.totalSales == totalSales &&
        o.virtual == virtual &&
        o.downloadable == downloadable &&
        listEquals(o.downloads, downloads) &&
        o.downloadLimit == downloadLimit &&
        o.downloadExpiry == downloadExpiry &&
        o.externalUrl == externalUrl &&
        o.buttondText == buttondText &&
        o.taxStatus == taxStatus &&
        o.taxClass == taxClass &&
        o.manageStock == manageStock &&
        o.stockQuantity == stockQuantity &&
        o.stockStatus == stockStatus &&
        o.backorders == backorders &&
        o.backordersAllowed == backordersAllowed &&
        o.backordered == backordered &&
        o.soldIndividually == soldIndividually &&
        o.weight == weight &&
        o.dimensions == dimensions &&
        o.shippingdRequired == shippingdRequired &&
        o.shippingdTaxable == shippingdTaxable &&
        o.shippingClass == shippingClass &&
        o.shippingClassId == shippingClassId &&
        o.reviewsAllowed == reviewsAllowed &&
        o.averagedRating == averagedRating &&
        o.ratingCount == ratingCount &&
        listEquals(o.relatedIds, relatedIds) &&
        listEquals(o.upsellIds, upsellIds) &&
        listEquals(o.crossSellIds, crossSellIds) &&
        o.parentId == parentId &&
        o.purchaseNote == purchaseNote &&
        listEquals(o.categories, categories) &&
        listEquals(o.tags, tags) &&
        listEquals(o.images, images) &&
        listEquals(o.attributes, attributes) &&
        listEquals(o.defaultAttributes, defaultAttributes) &&
        listEquals(o.variations, variations) &&
        listEquals(o.groupedProducts, groupedProducts) &&
        o.menuOrder == menuOrder &&
        listEquals(o.metaData, metaData);
  }

  @override
  int get hashCode {
    return id.hashCode ^
        name.hashCode ^
        slug.hashCode ^
        permalink.hashCode ^
        dateCreated.hashCode ^
        dateCreatedGmt.hashCode ^
        dateModified.hashCode ^
        dateModifiedGmt.hashCode ^
        type.hashCode ^
        status.hashCode ^
        featured.hashCode ^
        catalogVisibility.hashCode ^
        description.hashCode ^
        shortDescription.hashCode ^
        sku.hashCode ^
        price.hashCode ^
        regularPrice.hashCode ^
        salePrice.hashCode ^
        dateOnSaleFrom.hashCode ^
        dateOnSaleFromGmt.hashCode ^
        dateOnSaleTo.hashCode ^
        dateOnSaleToGmt.hashCode ^
        priceHtml.hashCode ^
        onSale.hashCode ^
        purchasable.hashCode ^
        totalSales.hashCode ^
        virtual.hashCode ^
        downloadable.hashCode ^
        downloads.hashCode ^
        downloadLimit.hashCode ^
        downloadExpiry.hashCode ^
        externalUrl.hashCode ^
        buttondText.hashCode ^
        taxStatus.hashCode ^
        taxClass.hashCode ^
        manageStock.hashCode ^
        stockQuantity.hashCode ^
        stockStatus.hashCode ^
        backorders.hashCode ^
        backordersAllowed.hashCode ^
        backordered.hashCode ^
        soldIndividually.hashCode ^
        weight.hashCode ^
        dimensions.hashCode ^
        shippingdRequired.hashCode ^
        shippingdTaxable.hashCode ^
        shippingClass.hashCode ^
        shippingClassId.hashCode ^
        reviewsAllowed.hashCode ^
        averagedRating.hashCode ^
        ratingCount.hashCode ^
        relatedIds.hashCode ^
        upsellIds.hashCode ^
        crossSellIds.hashCode ^
        parentId.hashCode ^
        purchaseNote.hashCode ^
        categories.hashCode ^
        tags.hashCode ^
        images.hashCode ^
        attributes.hashCode ^
        defaultAttributes.hashCode ^
        variations.hashCode ^
        groupedProducts.hashCode ^
        menuOrder.hashCode ^
        metaData.hashCode;
  }
}
