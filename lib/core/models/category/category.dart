import 'dart:convert';

class Category {
  String id;
  String number;
  String title;
  String menuTitle;
  String? rootCategoryId;

  Category({
    required this.id,
    required this.number,
    required this.title,
    required this.menuTitle,
    required this.rootCategoryId,
  });

  factory Category.fromRawJson(String str) =>
      Category.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["id"],
    number: json["number"],
    title: json["title"],
    menuTitle: json["menuTitle"],
    rootCategoryId: json["rootCategoryId"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "number": number,
    "title": title,
    "menuTitle": menuTitle,
    "rootCategoryId": rootCategoryId,
  };
}
