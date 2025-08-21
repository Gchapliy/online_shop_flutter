import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:elektrostok/providers/products_provider.dart';

class ProductList extends ConsumerWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(productsProvider);

    return products.when(
      data: (productList) {
        return ListView.builder(
          shrinkWrap: true, // каже: підлаштовуйся під вміст
          physics: const NeverScrollableScrollPhysics(), // забороняє прокрутку
          itemCount: productList.length,
          itemBuilder: (context, index) {
            final product = productList[index];
            return ListTile(
              title: Text(product.model),
              subtitle: Text('\$${product.rrPrice}'),
            );
          },
        );
      },
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (error, stack) => Center(child: Text('Error: $error')),
    );
  }
}
