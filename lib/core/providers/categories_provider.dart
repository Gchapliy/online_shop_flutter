import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dio_provider.dart';
import 'package:elektrostok/core/models/category/category.dart';
import 'dart:convert';

final List<Category> categories = [];
final List<Category> rootCategories = [];
final Map<String, List<Category>> subCategories = {};

final categoriesProvider = FutureProvider.autoDispose<List<Category>>((
  ref,
) async {
  if (categories.isNotEmpty) {
    return categories;
  }
  final dio = ref.watch(dioProvider);
  final response = await dio.get(
    'https://elektrostok.com/api/get.categories.php',
    queryParameters: {'key': 'a93c530a7af5ed2a7419e7y578d150'},
  );

  if (response.statusCode == 200) {
    final List<dynamic> data = jsonDecode(response.data)["data"];
    categories.addAll(data.map((item) => Category.fromJson(item)).toList());
    return categories;
  } else {
    throw Exception('Failed to load categories');
  }
});
