import 'package:elektrostok/core/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const BackButton(),
          //const _SideBarButton(),
          //const Expanded(child: SearchField()),
          //const SizedBox(width: 16),
          // IconWithCounter(
          //   svgSrc: cartIcon,
          //   numOfItems: 2, // Replace with actual cart item count
          //   press: () {
          //     // Navigate to cart screen
          //     // Navigator.pushNamed(context, '/cart');
          //   },
          // ),
        ],
      ),
    );
  }
}
