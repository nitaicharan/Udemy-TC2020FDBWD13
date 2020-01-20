import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  void add(String name) {
    if (name != null) {
      this.tasks.add(Task(name: name));
      notifyListeners();
    }
  }

  int get taskCount => this.tasks.length;
}
