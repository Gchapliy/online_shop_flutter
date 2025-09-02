import 'package:elektrostok/core/constants/constants.dart';
import 'package:elektrostok/core/screens/home/components/search_field.dart';
import 'package:flutter/material.dart';
import 'package:elektrostok/core/screens/home/components/icon_with_counter.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const _SideBarButton(),
          const Expanded(child: SearchField()),
          const SizedBox(width: 16),
          IconWithCounter(
            svgSrc: cartIcon,
            numOfItems: 2, // Replace with actual cart item count
            press: () {
              // Navigate to cart screen
              // Navigator.pushNamed(context, '/cart');
            },
          ),
        ],
      ),
    );
  }
}

class _SideBarButton extends StatelessWidget {
  const _SideBarButton();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => context.go('/drawer'),
      icon: Container(
        padding: const EdgeInsets.all(12),
        height: 46,
        width: 46,
        decoration: const BoxDecoration(
          color: textInputBackground,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(sideBarIcon),
      ),
    );
  }
}
