import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:solana_rewards/features/dashboard/view/dashboard.dart';

class AppRouter {

  final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');
  final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

  GoRouter get router => _goRouter;

  AppRouter(
    //this.authService,
  );

  AppRouter.of(BuildContext context) : this(
    //context.read(),
  );

  late final GoRouter _goRouter = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: Dashboard.path,
    debugLogDiagnostics: true,
    routes: <RouteBase>[
      GoRoute(
        path: Dashboard.path,
        builder: (BuildContext context, GoRouterState state) {
          return const Dashboard();
        },
      ),
    ],
    //errorBuilder: (context, state) => ErrorPage(error: state.error.toString())
  );
}



