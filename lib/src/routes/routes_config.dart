import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lp_counter/src/screens/board_1_screen.dart';
import 'package:lp_counter/src/screens/board_2_screen.dart';
import 'package:lp_counter/src/screens/board_3_screen.dart';
import 'package:lp_counter/src/screens/board_41_screen.dart';
import 'package:lp_counter/src/screens/board_42_screen.dart';
import 'package:lp_counter/src/screens/board_51_screen.dart';
import 'package:lp_counter/src/screens/board_52_screen.dart';
import 'package:lp_counter/src/screens/board_61_screen.dart';
import 'package:lp_counter/src/screens/board_62_screen.dart';
import 'package:lp_counter/src/screens/home_screen.dart';
import 'package:lp_counter/src/screens/setting_screen.dart';

final GoRouter appRouter = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          const HomeScreen(),
    ),
    GoRoute(
      path: '/settings',
      builder: (BuildContext context, GoRouterState state) =>
          const SettingScreen(),
    ),
    GoRoute(
      path: '/board1',
      builder: (BuildContext context, GoRouterState state) =>
          const Board1Screen(),
    ),
    GoRoute(
      path: '/board2',
      builder: (BuildContext context, GoRouterState state) =>
          const Board2Screen(),
    ),
    GoRoute(
      path: '/board3',
      builder: (BuildContext context, GoRouterState state) =>
          const Board3Screen(),
    ),
    GoRoute(
      path: '/board41',
      builder: (BuildContext context, GoRouterState state) =>
          const Board41Screen(),
    ),
    GoRoute(
      path: '/board42',
      builder: (BuildContext context, GoRouterState state) =>
          const Board42Screen(),
    ),
    GoRoute(
      path: '/board51',
      builder: (BuildContext context, GoRouterState state) =>
          const Board51Screen(),
    ),
    GoRoute(
      path: '/board52',
      builder: (BuildContext context, GoRouterState state) =>
          const Board52Screen(),
    ),
    GoRoute(
      path: '/board61',
      builder: (BuildContext context, GoRouterState state) =>
          const Board61Screen(),
    ),
    GoRoute(
      path: '/board62',
      builder: (BuildContext context, GoRouterState state) =>
          const Board62Screen(),
    ),
  ],
);
