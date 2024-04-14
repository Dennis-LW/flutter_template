import 'package:flutter/foundation.dart';
import '../model/todo.dart';

class TodoProvider extends ChangeNotifier {
  List<Todo> _todos = [];
  List<Todo> get todos => _todos;

  addTodo(Todo todo) {
    _todos.add(todo);
    notifyListeners();
  }

  updateTodo(bool value, int index) {
    _todos[index].completed = value;
    notifyListeners();
  }
}