import 'package:elektrostok/core/constants/constants.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:elektrostok/core/providers/products_provider.dart';

class ProductList extends ConsumerWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(productsProvider);

    return products.when(
      data: (productList) {
        return Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.only(top: padding),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              childAspectRatio: 0.85,
            ),
            itemCount: productList.length,
            itemBuilder: (context, index) {
              return Card(
                elevation: 2,
                child: Center(
                  child: Text(
                    productList[index].model,
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              );
            },
          ),
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }
}
