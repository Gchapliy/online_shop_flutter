import 'package:elektrostok/core/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:elektrostok/core/constants/constants.dart';
import 'package:flutter_svg/svg.dart';
import 'components/app_navigation_bar.dart';

class EntryPoint extends StatefulWidget {
  const EntryPoint({super.key});

  @override
  State<EntryPoint> createState() => _EntryPointUIState();
}

class _EntryPointUIState extends State<EntryPoint> {
  /// Current Page
  int currentIndex = 0;

  /// On labelLarge navigation tap
  void onBottomNavigationTap(int index) {
    currentIndex = index;
    setState(() {});
  }

  /// All the pages
  List<Widget> screens = [const HomeScreen()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: PageTransitionSwitcher(
        transitionBuilder: (child, primaryAnimation, secondaryAnimation) {
          return SharedAxisTransition(
            animation: primaryAnimation,
            secondaryAnimation: secondaryAnimation,
            transitionType: SharedAxisTransitionType.horizontal,
            fillColor: scaffoldBackground,
            child: child,
          );
        },
        duration: duration,
        child: screens[currentIndex],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          onBottomNavigationTap(2);
        },
        backgroundColor: primaryColor,
        child: SvgPicture.asset(
          cartIcon,
          width: iconSize,
          height: iconSize,
          colorFilter: ColorFilter.mode(iconDefaultColor, BlendMode.srcIn),
          fit: BoxFit.contain, // або BoxFit.cover залежно від потреби
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: currentIndex,
        onNavTap: onBottomNavigationTap,
      ),
    );
  }
}
