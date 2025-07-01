import 'package:elektrostok/screens/home/components/search_field.dart';
import 'package:flutter/material.dart';
import 'package:elektrostok/screens/home/components/icon_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(child: SearchField()),
          const SizedBox(width: 16),
          IconWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            numOfItems: 2, // Replace with actual cart item count
            press: () {
              // Navigate to cart screen
              Navigator.pushNamed(context, '/cart');
            },
          ),
        ],
      ),
    );
  }
}
