
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
        colorScheme: const ColorScheme.dark(),
        useMaterial3: true,
      ),
    );
  }
}

