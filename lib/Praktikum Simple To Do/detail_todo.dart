import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'todo.dart';

class DetailEditTodo extends StatefulWidget {
  final Todo currentTodo;

  DetailEditTodo({Key? key, required this.currentTodo}) : super(key: key);

  @override
  State<DetailEditTodo> createState() => _DetailEditTodoState();
}

class _DetailEditTodoState extends State<DetailEditTodo> {
  late Todo _currentItem;
  bool isDisabled = false;
  bool editButtonState = true;
  bool updateButtonState = false;
  List<String> finishedOpt = ["Belum Selesai", "Selesai"];
  late String finishedValue;

  final _titleController = TextEditingController();
  final _descController = TextEditingController();
  final _categoryController = TextEditingController();
  final _dateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _currentItem = widget.currentTodo;
    setData();
  }

  void setData() {
    _titleController.text = _currentItem.title ?? '';
    _descController.text = _currentItem.description ?? '';
    _categoryController.text = _currentItem.category ?? '';
    _dateController.text = _currentItem.todoDate ?? '';
    finishedValue = finishedOpt[_currentItem.isFinished ?? 0];
  }

  Future<void> _selectedTodoDate(BuildContext context) async {
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
        _dateController.text = DateFormat('yyyy-MM-dd').format(pickedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail and Edit Todo"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                enabled: isDisabled,
                controller: _titleController,
                decoration: const InputDecoration(
                  labelText: 'Title',
                  hintText: 'Write Todo Title',
                ),
              ),
              TextField(
                enabled: isDisabled,
                controller: _descController,
                decoration: const InputDecoration(
                  labelText: 'Description',
                  hintText: 'Write Todo Description',
                ),
              ),
              TextField(
                enabled: isDisabled,
                controller: _categoryController,
                decoration: const InputDecoration(
                  labelText: 'Category',
                  hintText: 'Write Todo Category',
                ),
              ),
              TextField(
                enabled: isDisabled,
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
              ButtonTheme(
                alignedDropdown: true,
                child: DropdownButtonFormField(
                  decoration: const InputDecoration(
                    labelText: 'Is Finished',
                  ),
                  value: finishedValue,
                  items: finishedOpt
                      .map((e) => DropdownMenuItem(
                            value: e,
                            child: Text(e),
                          ))
                      .toList(),
                  onChanged: isDisabled
                      ? (value) {
                          setState(() {
                            finishedValue = value.toString();
                          });
                        }
                      : null,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: editButtonState
                    ? () {
                        setState(() {
                          isDisabled = true;
                          editButtonState = false;
                          updateButtonState = true;
                        });
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 45),
                ),
                child: const Text("Edit"),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                onPressed: updateButtonState
                    ? () {
                        Todo updateTodo = Todo(
                          id: _currentItem.id,
                          title: _titleController.text,
                          description: _descController.text,
                          category: _categoryController.text,
                          todoDate: _dateController.text,
                          isFinished: finishedOpt.indexOf(finishedValue),
                        );
                        Navigator.pop(context, updateTodo);
                      }
                    : null,
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 45),
                ),
                child: const Text("Update and Return"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
