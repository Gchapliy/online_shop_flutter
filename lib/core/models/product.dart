import 'dart:convert';
import 'product_images.dart';

class Product {
  String id;
  String title;
  String categoryProductTitle;
  String brandTitle;
  String model;
  ProductImages images;
  String rrPrice;
  String availability;
  String freeDelivery;
  String topSales;
  String productNew;

  Product({
    required this.id,
    required this.title,
    required this.categoryProductTitle,
    required this.brandTitle,
    required this.model,
    required this.images,
    required this.rrPrice,
    required this.availability,
    required this.freeDelivery,
    required this.topSales,
    required this.productNew,
  });

  factory Product.fromRawJson(String str) => Product.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    title: json["title"],
    categoryProductTitle: json["categoryProductTitle"],
    brandTitle: json["brandTitle"],
    model: json["model"],
    images: ProductImages.fromJson(json["images"]),
    rrPrice: json["rrPrice"],
    availability: json["availability"],
    freeDelivery: json["freeDelivery"],
    topSales: json["topSales"],
    productNew: json["new"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "categoryProductTitle": categoryProductTitle,
    "brandTitle": brandTitle,
    "model": model,
    "images": images.toJson(),
    "rrPrice": rrPrice,
    "availability": availability,
    "freeDelivery": freeDelivery,
    "topSales": topSales,
    "new": productNew,
  };
}
