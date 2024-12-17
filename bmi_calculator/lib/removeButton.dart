import 'package:flutter/material.dart';

const greyApp = Color.fromARGB(255, 108, 111, 119);

class removeButton extends StatefulWidget {
  const removeButton({super.key});

  @override
  State<removeButton> createState() => _removeButtonState();
}

class _removeButtonState extends State<removeButton> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
        backgroundColor: greyApp,
        shape: const CircleBorder(),
        onPressed: () {
         
        },
        child: Icon(
          Icons.remove,
          color: Colors.white,
          size: 35.0,
        ),
      ),
    );
  }
}