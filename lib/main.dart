import 'package:elektrostok/routes.dart';
import 'package:elektrostok/screens/home_screen.dart';
import 'package:elektrostok/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Electrostok',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme(context),
      initialRoute: HomeScreen.routeName,
      routes: routes,
    );
  }
}
