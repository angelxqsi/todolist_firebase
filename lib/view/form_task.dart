import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class AddNewTaskScreen extends StatefulWidget {
  const AddNewTaskScreen({super.key});

  @override
  State<AddNewTaskScreen> createState() => _AddNewTaskScreenState();
}

class _AddNewTaskScreenState extends State<AddNewTaskScreen> {
  final nameController = TextEditingController();
  final numberController = TextEditingController();

  @override
  dispose() {
    nameController.dispose();
    numberController.dispose();
    print('dispose');
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Task'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Name',
              ),
              controller: nameController,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Number',
              ),
              controller: numberController,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                final task = <String, dynamic>{
                  "name": nameController.text,
                  "number": int.parse(numberController.text),
                };

                final db = FirebaseFirestore.instance;

// Add a new document with a generated ID
                db
                    .collection("todolist")
                    .add(task)
                    .then((DocumentReference doc) {
                  Navigator.pop(context);
                  print('DocumentSnapshot added with ID: ${doc.id}');
                });
              },
              child: const Text('Add New Task')),
        ]),
      ),
    );
  }
}
