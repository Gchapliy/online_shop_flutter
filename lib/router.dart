import 'package:elektrostok/core/screens/drawer/drawer_screen.dart';
import 'package:elektrostok/core/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'drawer',
          builder: (BuildContext context, GoRouterState state) {
            return const DrawerScreen();
          },
        ),
      ],
    ),
  ],
);
