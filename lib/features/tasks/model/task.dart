
import 'package:equatable/equatable.dart';

class Task extends Equatable {

  final String title;
  final String description;

  Task({
    required this.title,
    required this.description,
  });

  @override
  List<Object?> get props => [title, description];

  Task copyWith({
    String? title,
    String? description,
  }) {
    return Task(
      title: title ?? this.title,
      description: description ?? this.description,
    );
  }

  @override
  String toString() {
    return 'Task(title: $title, description: $description)';
  }


}