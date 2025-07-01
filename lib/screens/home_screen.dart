import 'package:elektrostok/screens/home/components/discount_banner.dart';
import 'package:elektrostok/screens/home/components/home_header.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [HomeHeader(), DiscountBanner()]),
        ),
      ),
    );
  }
}
