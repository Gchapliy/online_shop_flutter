import 'package:flutter/material.dart';

import 'package:elektrostok/core/constants/constants.dart';
import 'network_image.dart';
import 'package:elektrostok/core/models/product/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({super.key, required this.data});

  final Product data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: padding / 2),
      child: Material(
        borderRadius: circularBorderRadius,
        color: scaffoldBackground,
        child: InkWell(
          borderRadius: circularBorderRadius,
          //onTap: () => Navigator.pushNamed(context, AppRoutes.productDetails),
          child: Container(
            width: 176,
            height: 296,
            padding: const EdgeInsets.all(padding),
            decoration: BoxDecoration(
              border: Border.all(width: 0.1, color: placeholder),
              borderRadius: circularBorderRadius,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(padding / 2),
                  child: AspectRatio(
                    aspectRatio: 1 / 1,
                    child: NetworkImageWithLoader(
                      middleNetworkImagePath + data.images.main["1"]!,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  data.model,
                  style: Theme.of(
                    context,
                  ).textTheme.titleMedium?.copyWith(color: Colors.black),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                // const Spacer(),
                // Text(data.weight),
                const SizedBox(height: 4),
                // Row(
                //   mainAxisSize: MainAxisSize.min,
                //   crossAxisAlignment: CrossAxisAlignment.end,
                //   children: [
                //     Text(
                //       '${data.rrPrice} грн',
                //       style: Theme.of(
                //         context,
                //       ).textTheme.titleLarge?.copyWith(color: Colors.black),
                //     ),
                //     // const SizedBox(width: 4),
                //     // Text(
                //     //   '\$${data.mainPrice}',
                //     //   style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                //     //     decoration: TextDecoration.lineThrough,
                //     //   ),
                //     // ),
                //   ],
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
