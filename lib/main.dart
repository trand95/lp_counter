import 'package:flutter/material.dart';
import 'package:lp_counter/src/screens/home_screen.dart';
import 'package:lp_counter/src/screens/setting_screen.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MagicLifeCounter());
}

final GoRouter _router = GoRouter(
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
  ],
);

class MagicLifeCounter extends StatelessWidget {
  const MagicLifeCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
      // routerConfig: MyAppRouter().router,
      // routeInformationProvider: MyAppRouter().router.routeInformationProvider,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      // home: const HomeScreen(),

      /*  routes: {
        '/home': (context) => const HomeScreen(),
        '/setting': (context) => const SettingScreen(),
      },*/
    );
  }
}
