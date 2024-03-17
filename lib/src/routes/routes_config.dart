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
import 'package:lp_counter/src/routes/routes_name.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: '/',
  routes: <RouteBase>[
    GoRoute(
      name: RouteNames.home,
      path: '/',
      builder: (BuildContext context, GoRouterState state) =>
          const HomeScreen(),
    ),
    GoRoute(
      name: RouteNames.settings,
      path: '/settings',
      builder: (BuildContext context, GoRouterState state) =>
          const SettingScreen(),
    ),
    GoRoute(
      name: RouteNames.board1,
      path: '/board1/:initialLife',
      builder: (BuildContext context, GoRouterState state) {
        final int initialLife = int.parse(state.pathParameters['initialLife']!);
        return Board1Screen(
          initLife: initialLife,
        );
      },
    ),
    GoRoute(
      name: RouteNames.board2,
      path: '/board2/:initialLife',
      builder: (BuildContext context, GoRouterState state) {
        final int initialLife = int.parse(state.pathParameters['initialLife']!);
        return Board2Screen(
          initLife: initialLife,
        );
      },
    ),
    GoRoute(
      name: RouteNames.board3,
      path: '/board3/:initialLife',
      builder: (BuildContext context, GoRouterState state) {
        final int initialLife = int.parse(state.pathParameters['initialLife']!);
        return Board3Screen(
          initLife: initialLife,
        );
      },
    ),
    GoRoute(
      name: RouteNames.board41,
      path: '/board41/:initialLife',
      builder: (BuildContext context, GoRouterState state) {
        final int initialLife = int.parse(state.pathParameters['initialLife']!);
        return Board41Screen(
          initLife: initialLife,
        );
      },
    ),
    GoRoute(
      name: RouteNames.board42,
      path: '/board42/:initialLife',
      builder: (BuildContext context, GoRouterState state) {
        final int initialLife = int.parse(state.pathParameters['initialLife']!);
        return Board42Screen(
          initLife: initialLife,
        );
      },
    ),
    GoRoute(
      name: RouteNames.board51,
      path: '/board51/:initialLife',
      builder: (BuildContext context, GoRouterState state) {
        final int initialLife = int.parse(state.pathParameters['initialLife']!);
        return Board51Screen(
          initLife: initialLife,
        );
      },
    ),
    GoRoute(
      name: RouteNames.board52,
      path: '/board52/:initialLife',
      builder: (BuildContext context, GoRouterState state) {
        final int initialLife = int.parse(state.pathParameters['initialLife']!);
        return Board52Screen(
          initLife: initialLife,
        );
      },
    ),
    GoRoute(
      name: RouteNames.board61,
      path: '/board61/:initialLife',
      builder: (BuildContext context, GoRouterState state) {
        final int initialLife = int.parse(state.pathParameters['initialLife']!);
        return Board61Screen(
          initLife: initialLife,
        );
      },
    ),
    GoRoute(
      name: RouteNames.board62,
      path: '/board62/:initialLife',
      builder: (BuildContext context, GoRouterState state) {
        final int initialLife = int.parse(state.pathParameters['initialLife']!);
        return Board62Screen(
          initLife: initialLife,
        );
      },
    ),
  ],
);
