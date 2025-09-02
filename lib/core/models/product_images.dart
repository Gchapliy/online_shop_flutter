import 'dart:convert';

class ProductImages {
  Map<String, String> main;
  Map<String, String> gallery;

  ProductImages({required this.main, required this.gallery});

  factory ProductImages.fromRawJson(String str) =>
      ProductImages.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProductImages.fromJson(Map<String, dynamic> json) => ProductImages(
    main: Map.from(json["main"]).map((k, v) => MapEntry<String, String>(k, v)),
    gallery: Map.from(
      json["gallery"],
    ).map((k, v) => MapEntry<String, String>(k, v)),
  );

  Map<String, dynamic> toJson() => {
    "main": Map.from(main).map((k, v) => MapEntry<String, dynamic>(k, v)),
    "gallery": Map.from(gallery).map((k, v) => MapEntry<String, dynamic>(k, v)),
  };
}
