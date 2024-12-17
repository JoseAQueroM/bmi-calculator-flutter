import 'package:flutter/material.dart';

const greyApp = Color.fromARGB(255, 108, 111, 119);

class addButton extends StatefulWidget {
  const addButton({super.key});

  @override
  State<addButton> createState() => _addButtonState();
}

class _addButtonState extends State<addButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        backgroundColor: greyApp,
        shape: const CircleBorder(),
        onPressed: () {},
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 35.0,
        ),
      ),
    );
  }
}