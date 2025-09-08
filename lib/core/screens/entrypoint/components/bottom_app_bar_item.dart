import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:elektrostok/core/constants/constants.dart';

class BottomAppBarItem extends StatelessWidget {
  BottomAppBarItem({
    super.key,
    required this.iconLocation,
    required this.name,
    required this.isActive,
    required this.onTap,
    this.customIconSize = iconSize,
    this.isCircled = true,
  });

  final String iconLocation;
  final String name;
  final bool isActive;
  final double customIconSize;
  final bool isCircled;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        // mainAxisSize: MainAxisSize.min,
        children: [
          if (isCircled)
            ClipRRect(
              borderRadius: BorderRadius.circular(
                borderRadius,
              ), // змініть на потрібний радіус
              child: SvgPicture.asset(
                iconLocation,
                width: customIconSize, // встановіть потрібну ширину
                height: customIconSize, // встановіть потрібну висоту
                colorFilter: ColorFilter.mode(
                  isActive ? primaryColor : tertiaryColor,
                  BlendMode.srcIn,
                ),
              ),
            ),
          if (!isCircled)
            SvgPicture.asset(
              iconLocation,
              width: customIconSize, // встановіть потрібну ширину
              height: customIconSize, // встановіть потрібну висоту
              colorFilter: ColorFilter.mode(
                isActive ? primaryColor : tertiaryColor,
                BlendMode.srcIn,
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
