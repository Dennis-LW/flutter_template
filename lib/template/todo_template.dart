import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/todo.dart';
import '../provider/todo_provider.dart';

class TodoTemplate extends StatefulWidget {
  const TodoTemplate({super.key});

  @override
  State<TodoTemplate> createState() => _TodoTemplateState();
}

class _TodoTemplateState extends State<TodoTemplate> {
  final _controller = TextEditingController();
  TodoPriority priority = TodoPriority.Normal;
  
  void addTodo() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => StatefulBuilder(
        builder: (context, setBuilderState) => Container(
          height: MediaQuery.of(context).size.height*0.9,
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: _controller,
                decoration: const InputDecoration(hintText: 'What to do?'),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Select Priority'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Radio<TodoPriority>(
                    value: TodoPriority.Low,
                    groupValue: priority,
                    onChanged: (value) {
                      setBuilderState(() {
                        priority = value!;
                      });
                    },
                  ),
                  Text(TodoPriority.Low.name),
                  Radio<TodoPriority>(
                    value: TodoPriority.Normal,
                    groupValue: priority,
                    onChanged: (value) {
                      setBuilderState(() {
                        priority = value!;
                      });
                    },
                  ),
                  Text(TodoPriority.Normal.name),
                  Radio<TodoPriority>(
                    value: TodoPriority.High,
                    groupValue: priority,
                    onChanged: (value) {
                      setBuilderState(() {
                        priority = value!;
                      });
                    },
                  ),
                  Text(TodoPriority.High.name),
                ],
              ),
              ElevatedButton(
                onPressed: _save,
                child: Text('SAVE'),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _save() {
    if (_controller.text.isEmpty) {
      showMsg(context, 'Input field must not be empty');
      return;
    }

    final todo = Todo(
      id: DateTime.now().millisecondsSinceEpoch,
      name: _controller.text,
      priority: priority,
    );

    Provider.of<TodoProvider>(context, listen: false).addTodo(todo);
    _controller.clear();
    Navigator.pop(context);
  }

  void showMsg(BuildContext context, String s) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Caution!'),
        content: Text(s),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('CLOSE'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          addTodo();
        },
        child: const Icon(Icons.add),
      ),
      body: Consumer<TodoProvider>(
        builder: (context, provider, child) {
          if(provider.todos.isEmpty) {
            return const Center(child: Text('Nothing to do!'),);
          } else {
            return ListView.builder(
              itemCount: provider.todos.length,
              itemBuilder: (context, index) {
                final todo = provider.todos[index];
                return TodoItem(
                  todo: todo,
                  onChanged: (value) {
                    provider.updateTodo(value, index);
                  }
                );
              },
            );
          }
        },
      ),
    );
  }
}

class TodoItem extends StatelessWidget {
  final Todo todo;
  final Function(bool) onChanged;

  const TodoItem({super.key, required this.todo, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(todo.name),
      subtitle: Text('Priority: ${todo.priority.name}'),
      value: todo.completed,
      onChanged: (value) {
        onChanged(value!);
      },
    );
  }
}