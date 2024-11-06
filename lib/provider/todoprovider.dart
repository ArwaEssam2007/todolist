import 'package:flutter/material.dart';
import '../Models/ToDoModel.dart';
import '../service/todoservice.dart';
class TaskProvider extends ChangeNotifier {
  TaskModel? data;

  Future<void> getAllData() async {
    data = await TaskService.getData();
    notifyListeners();
  }

  Future<void> addTask(String todo) async {
    await TaskService.addItem(todo: todo);
    data?.tasks.add({"todo": todo});
    data?.total += 1;
    notifyListeners();
  }
}