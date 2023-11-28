import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../todo/state.dart';

class TodoPage extends StatelessWidget {
  const TodoPage({Key? key});

@override
Widget build(BuildContext context) {
  var task = context.watch<Todo>().task;
  return Scaffold(
    body: ListView.builder(
      itemCount: task.length,
      itemBuilder: (context, index) {
        Color itemColor = index % 2 == 0 ? Colors.blue : Colors.green;

        return Dismissible(
          key: Key(task[index]),
          onDismissed: (direction) {
            context.read<Todo>().delete(index);
            
          },
          background: Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(right: 20.0),
           
            color: Colors.red, child: const Icon(Icons.delete, color: Color.fromARGB(255, 142, 107, 107)),
          ),
          child: Card(
            color: itemColor.withOpacity(0.4),
            elevation: 3,
            margin:  const EdgeInsets.all(8),
            surfaceTintColor:  Colors.blue,
            shadowColor: Colors.blue,
            
            child: ListTile(
              title: Text(
                task[index],
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              trailing: IconButton(
                icon: const Icon(Icons.edit),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      // Get the current task name
                      String currentTask = task[index];

                      return AlertDialog(
                        title: const Text('Edit Task'),
                        content: TextField(
                          controller: TextEditingController(text: currentTask),
                          decoration: const InputDecoration(
                            hintText: 'Edit Task',
                          ),
                          onChanged: (value) {
                            currentTask = value;
                          },
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              context.read<Todo>().edit(index, currentTask);
                              Navigator.pop(context);
                            },
                            child: const Text('Edit'),
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          ),
        );
      },
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            String newTask = '';
            return AlertDialog(
              title: const Text('Add Task'),
              content: TextField(
                decoration: const InputDecoration(hintText: 'Enter Task'),
                onChanged: (value) {
                  newTask = value;
                },
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    context.read<Todo>().add(newTask);
                    Navigator.pop(context);
                  },
                  child: const Text('Add'),
                ),
              ],
            );
          },
        );
      },
      child: const Icon(Icons.add),
    ),
  );
}

}
