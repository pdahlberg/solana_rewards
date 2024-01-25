
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';
import 'package:solana_rewards/features/tasks/repository/task_repository.dart';
import 'package:solana_rewards/infra/dependencies.dart';

class Dashboard extends StatelessWidget {

  static const String path = '/dashboard';

  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final taskRepository = getIt<TaskRepository>();

    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text('Balance'),
            Text('\$AD 0.00'),
            Text('Tasks'),
            Expanded(
              child: Watch.builder(
                builder: (context) {
                  var list = taskRepository.list;
                  return ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(list[index].title),
                      );
                    },
                  );
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}