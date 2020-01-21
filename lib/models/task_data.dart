import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  final List<Task> _tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  UnmodifiableListView get tasks {
    return UnmodifiableListView(this._tasks);
  }

  void add(String name) {
    if (name != null) {
      this._tasks.add(Task(name: name));
      notifyListeners();
    }
  }

  int get taskCount => this._tasks.length;

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deleteTask(Task task) {
    this._tasks.remove(task);
    notifyListeners();
  }
}
