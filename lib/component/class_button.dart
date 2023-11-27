import 'package:flutter/material.dart';

class Buttons {
  Buttons();
  Widget btnBotton({
    required void Function() onpress,
  }) {
    return ElevatedButton(
      onPressed: onpress,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
        shadowColor: Colors.redAccent,
        elevation: 5,
        shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5))),
      ),
      child: const Text('Click Me'),
    );
  }
}
