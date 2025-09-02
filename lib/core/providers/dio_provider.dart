import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dio/dio.dart';

// Провайдер Dio
final dioProvider = Provider<Dio>((ref) {
  return Dio();
});
