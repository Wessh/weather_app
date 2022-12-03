import 'package:flutter/material.dart';
import 'package:weather_app/src/pages/splash_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.amber,
          brightness: Brightness.dark,
        ),
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashPage(),
      },
    );
  }
}
