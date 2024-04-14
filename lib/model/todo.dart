class Todo {
  int id;
  String name;
  bool completed;
  TodoPriority priority;

  Todo({
    required this.id,
    required this.name,
    this.completed = false,
    required this.priority,
  });
}

enum TodoPriority { Low, Normal, High }