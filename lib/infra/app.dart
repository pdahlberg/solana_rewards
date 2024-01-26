
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:solana_rewards/infra/app_router.dart';
import 'package:solana_rewards/infra/dependencies.dart';

class App extends StatelessWidget {

  const App({ super.key });

  @override
  Widget build(BuildContext context) {
    final GoRouter goRouter = getIt<AppRouter>().router;

    return MaterialApp.router(
      routerConfig: goRouter,
      theme: ThemeData(
        brightness: Brightness.light,
        useMaterial3: true,
        textTheme: const TextTheme(
          displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          bodyLarge: TextStyle(fontSize: 18, color: Colors.black87),
        ),
        appBarTheme: const AppBarTheme(
          color: Colors.orange,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orange,
        ),
      ),
    );
  }
}

