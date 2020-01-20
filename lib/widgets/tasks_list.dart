import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatefulWidget {
  @override
  _TasksListState createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: 'Buy milk'),
    Task(name: 'Buy eggs'),
    Task(name: 'Buy bread'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) => TaskTile(
        taskTitle: this.tasks[index].name,
        isChecked: this.tasks[index].isDone,
        checkBoxCallback: (bool checkboxState)=> setState(()=> tasks[index].toggleDone()),
      ),
      itemCount: tasks.length,
    );
  }
}
