import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          final task = taskData.tasks[index];
          return TaskTile(
            onLongPressCallback: () => taskData.deleteTask(task),
            taskTitle: task.name,
            isChecked: task.isDone,
            checkBoxCallback: (bool checkboxState) => taskData.updateTask(task),
          );
        },
        itemCount: taskData.taskCount,
      ),
    );
  }
}
