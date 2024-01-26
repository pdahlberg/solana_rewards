
import 'package:signals/signals.dart';
import 'package:solana_rewards/features/tasks/model/task.dart';

class TaskRepository {

  final list = listSignal<Task>([
    Task(title: 'Task a', description: 'Description 1'),
    Task(title: 'Task 2', description: 'Description 2'),
    Task(title: 'Task c', description: 'Description 3'),
  ]);

}