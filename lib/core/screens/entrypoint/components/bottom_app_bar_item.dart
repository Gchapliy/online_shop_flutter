import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:elektrostok/core/constants/constants.dart';

class BottomAppBarItem extends StatelessWidget {
  const BottomAppBarItem({
    super.key,
    required this.iconLocation,
    required this.name,
    required this.isActive,
    required this.onTap,
  });

  final String iconLocation;
  final String name;
  final bool isActive;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              borderRadius,
            ), // змініть на потрібний радіус
            child: SvgPicture.asset(
              iconLocation,
              width: iconSize, // встановіть потрібну ширину
              height: iconSize, // встановіть потрібну висоту
              colorFilter: ColorFilter.mode(
                isActive ? primaryColor : tertiaryColor,
                BlendMode.srcIn,
              ),
            ),
          ),
          Text(
            name,
            style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: isActive ? primaryColor : tertiaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
