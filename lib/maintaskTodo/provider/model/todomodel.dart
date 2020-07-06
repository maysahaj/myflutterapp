
import 'package:flutter/material.dart';
import '../../taskEx.dart';

class TodosModel extends ChangeNotifier {
  final List<Task> tasks = [];


  void addTodo(Task task) {
    tasks.add(task);
    notifyListeners();
  }

  void toggleTodo(Task task) {
    final taskIndex = tasks.indexOf(task);
    tasks[taskIndex].toggleCompleted();
    notifyListeners();
  }

  void deleteTodo(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}