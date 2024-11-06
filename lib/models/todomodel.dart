class TaskModel {
  List<dynamic> tasks;
  int total;

  TaskModel({required this.tasks, required this.total});

  factory TaskModel.getTodos(Map<String, dynamic> json) {
    return TaskModel(tasks: json['todos'], total: json['total']);
  }
}