import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({
    this.isChecked,
    this.taskTitle,
    this.checkBoxCallback,
    this.onLongPressCallback,
  });
  final bool isChecked;
  final String taskTitle;
  final Function checkBoxCallback;
  final Function onLongPressCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: this.onLongPressCallback,
      title: Text(
        this.taskTitle,
        style: TextStyle(
          decoration: this.isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: this.isChecked,
        onChanged: this.checkBoxCallback,
      ),
    );
  }
}
