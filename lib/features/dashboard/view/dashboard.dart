
import 'package:flutter/material.dart';
import 'package:signals/signals_flutter.dart';
import 'package:solana_mobile_client/solana_mobile_client.dart';
import 'package:solana_rewards/features/auth/state/auth_bloc.dart';
import 'package:solana_rewards/features/tasks/repository/task_repository.dart';
import 'package:solana_rewards/infra/dependencies.dart';

class Dashboard extends StatelessWidget {

  static const String path = '/dashboard';

  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final taskRepository = getIt<TaskRepository>();
    final authBloc = getIt<AuthBloc>();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Dashboard',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            OutlinedButton(
              child: Text('Login'),
              onPressed: () async {
                authBloc.connect();
              },
            ),
            Watch.builder(
              builder: (context) {
                return Text('Logged in: ${authBloc.state.value.publicKey != null}');
              },
            ),
            Text('Balance'),
            Text('\$AD 0.00'),
            Text('Tasks'),
            Expanded(
              child: Watch.builder(
                builder: (context) {
                  var list = taskRepository.list;
                  return ListView.builder(
                    padding: EdgeInsets.all(8),
                    itemExtent: 120,
                    itemCount: list.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          title: Text(list[index].title),
                        ),
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