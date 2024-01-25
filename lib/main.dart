import 'package:flutter/material.dart';
import 'package:solana_rewards/infra/app.dart';
import 'package:solana_rewards/infra/dependencies.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initDependencies();

  runApp(const App());
}
