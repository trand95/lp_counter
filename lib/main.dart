import 'package:flutter/material.dart';
import 'package:lp_counter/src/routes/routes_config.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MagicLifeCounter());
}

class MagicLifeCounter extends StatelessWidget {
  const MagicLifeCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Tauri'),
    );
  }
}
