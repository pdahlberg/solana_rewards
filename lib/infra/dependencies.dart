
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:solana_rewards/features/tasks/repository/task_repository.dart';
import 'package:solana_rewards/infra/app_router.dart';

final getIt = GetIt.instance;

void initDependencies() {
  getIt.registerSingleton<AppRouter>(AppRouter());
  getIt.registerSingleton<Dio>(Dio());
  getIt.registerSingleton<TaskRepository>(TaskRepository());
}
