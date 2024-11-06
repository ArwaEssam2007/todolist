import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String taskTitle;

  const TaskTile({required this.taskTitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: const TextStyle(decoration: TextDecoration.none),
      ),
    );
  }
}