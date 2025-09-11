import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dio_provider.dart';
import 'package:elektrostok/core/models/product/product.dart';
import 'dart:convert';

final productsProvider = FutureProvider.autoDispose<List<Product>>((ref) async {
  final dio = ref.watch(dioProvider);
  final response = await dio.get(
    'https://elektrostok.com/api/get.products.php',
    queryParameters: {
      'id': 256226,
      'page': 1,
      'count': 10,
      'key': 'a93c530a7af5ed2a7419e7y578d150',
    },
  );

  if (response.statusCode == 200) {
    final List<dynamic> data = jsonDecode(response.data)["data"];
    return data.map((item) => Product.fromJson(item)).toList();
  } else {
    throw Exception('Failed to load products');
  }
});
