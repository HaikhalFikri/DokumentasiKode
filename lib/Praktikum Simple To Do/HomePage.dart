import 'package:flutter/material.dart';
import 'add_todo.dart';
import 'todo.dart';
import 'detail_todo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Todo> _todoList = [];

  @override
  void initState() {
    super.initState();
    generateListData();
  }

  void generateListData() {
    _todoList = [
      Todo(
        id: 1,
        title: 'Rapat',
        description: 'Rapat HMJ',
        category: 'HMJ',
        todoDate: '16-05-2024',
        isFinished: 0,
      ),
      Todo(
        id: 2,
        title: 'Mancing',
        description: 'Pantang Pulang Sebelum Dapat Ikan',
        category: 'Hobby',
        todoDate: '20-05-2024',
        isFinished: 0,
      ),
      Todo(
        id: 3,
        title: 'Mobile Legend',
        description: 'Pushhhh Imo',
        category: 'Playing',
        todoDate: '1-05-2024',
        isFinished: 0,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ToDo List App"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var newTask = await Navigator.push<Todo>(
            context,
            MaterialPageRoute(builder: (context) => const AddTodoPage()),
          );
          if (newTask != null) {
            setState(() {
              _todoList.add(newTask);
            });
          }
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.builder(
        itemCount: _todoList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 5, left: 8, right: 8),
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              child: ListTile(
                onTap: () async {
                  int temp = index;
                  var updateItem = await Navigator.push<Todo>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailEditTodo(
                        currentTodo: _todoList[index],
                      ),
                    ),
                  );
                  if (updateItem != null) {
                    setState(() {
                      _todoList[temp] = updateItem;
                    });
                  }
                },
                onLongPress: () => showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text("Are you sure to delete it?"),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text("No"),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              _todoList.removeAt(index);
                            });
                            Navigator.of(context).pop();
                          },
                          child: const Text("Yes"),
                        ),
                      ],
                    );
                  },
                ),
                leading: Text("${index + 1}"),
                title: Text(_todoList[index].title ?? "No Title"),
                subtitle: Text(_todoList[index].category ?? "No Category"),
                trailing: Text(_todoList[index].todoDate ?? "No Date"),
              ),
            ),
          );
        },
      ),
    );
  }
}
