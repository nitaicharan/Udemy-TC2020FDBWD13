import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) => ListView.builder(
        itemBuilder: (BuildContext context, int index) => TaskTile(
          taskTitle: taskData.tasks[index].name,
          isChecked: taskData.tasks[index].isDone,
          checkBoxCallback: (bool checkboxState) {
            // Provider.of<TaskData>(context).tasks[index].toggleDone();
          },
        ),
        itemCount: taskData.taskCount,
      ),
    );
  }
}
