import 'package:flutter/material.dart';

import 'package:elektrostok/core/constants/constants.dart';
import 'bottom_app_bar_item.dart';

class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onNavTap,
  });

  final int currentIndex;
  final void Function(int) onNavTap;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: margin,
      // elevation: 0,
      color: bottomBarBackground,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomAppBarItem(
            name: 'Головна',
            iconLocation: logoIcon,
            isActive: currentIndex == 0,
            onTap: () => onNavTap(0),
          ),
          BottomAppBarItem(
            isCircled: false,
            name: 'Каталог',
            iconLocation: catalogIcon,
            isActive: currentIndex == 1,
            onTap: () => onNavTap(1),
          ),
          const Padding(
            padding: EdgeInsets.all(padding * 2),
            child: SizedBox(width: margin),
          ),

          /* <---- We have to leave this 3rd index (2) for the cart item -----> */
          BottomAppBarItem(
            name: 'Обранi',
            iconLocation: heartIcon,
            isActive: currentIndex == 3,
            onTap: () => onNavTap(3),
          ),
          BottomAppBarItem(
            name: 'Профiль',
            iconLocation: profileIcon,
            isActive: currentIndex == 4,
            onTap: () => onNavTap(4),
          ),
        ],
      ),
    );
  }
}
