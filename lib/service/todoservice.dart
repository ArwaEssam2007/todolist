import 'package:dio/dio.dart';

import '../Models/ToDoModel.dart';

class TaskService {
  static Dio dio = Dio();
  static Map postData = {'todo': '', 'completed': false, 'userId': 5};

  static Future<TaskModel> getData() async {
    Response response = await dio.get('https://dummyjson.com/todos/user/5');
    return TaskModel.getTodos(response.data);
  }

  static Future<void> addItem({required String todo}) async {
    postData['todo'] = todo;

    await dio.post(
      'https://jsonplaceholder.typicode.com/posts',
      data: postData,
    );
  }
}