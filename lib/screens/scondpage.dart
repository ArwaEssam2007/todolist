import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/ToDoProvider.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    String newTaskTitle = '';
    final taskObject = Provider.of<TaskProvider>(context, listen: false);
    return Container(
      padding: const EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Add Task",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Colors.purple,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            textAlign: TextAlign.center,
            onChanged: (newText) {
              newTaskTitle = newText;
            },
          ),
          const SizedBox(height: 20),
          TextButton(
            onPressed: () {
              if (newTaskTitle.trim() != '') {
                taskObject.addTask(newTaskTitle);
              }
              Navigator.pop(context);
            },
            style: TextButton.styleFrom(backgroundColor: Colors.purple),
            child: const Text(
              "Add",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}