import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import the intl package
import 'todo.dart';

class AddTodoPage extends StatefulWidget {
  const AddTodoPage({super.key});

  @override
  State<AddTodoPage> createState() => _AddTodoPageState();
}

class _AddTodoPageState extends State<AddTodoPage> {
  final _titleController = TextEditingController();
  final _descController = TextEditingController();
  final _categoryController = TextEditingController();
  final _dateController = TextEditingController();

  _addTask() {
    Todo newTask = Todo(
      id: 0,
      title: _titleController.text,
      description: _descController.text,
      category: _categoryController.text,
      todoDate: _dateController.text,
      isFinished: 0,
    );

    Navigator.pop(context, newTask);
  }

  _selectedTodoDate(BuildContext context) async {
    DateTime dateTime = DateTime.now();
    var pickedDate = await showDatePicker(
      context: context,
      initialDate: dateTime,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      setState(() {
        dateTime = pickedDate;
        _dateController.text =
            DateFormat('yyyy-MM-dd').format(pickedDate); // Format the date
      });
      print(_dateController.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Todo"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: _titleController,
                decoration: const InputDecoration(
                  labelText: 'Title',
                  hintText: 'Write Todo Title',
                ),
              ),
              TextField(
                controller: _descController,
                decoration: const InputDecoration(
                  labelText: 'Description',
                  hintText: 'Write Todo Description',
                ),
              ),
              TextField(
                controller: _categoryController,
                decoration: const InputDecoration(
                  labelText: 'Category',
                  hintText: 'Write Todo Category',
                ),
              ),
              TextField(
                controller: _dateController,
                decoration: InputDecoration(
                  labelText: 'Date',
                  hintText: 'Write Date ToDo',
                  prefixIcon: InkWell(
                    onTap: () {
                      _selectedTodoDate(context);
                    },
                    child: const Icon(Icons.calendar_today),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: _addTask,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 45),
                ),
                child: const Text("Add Task"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
