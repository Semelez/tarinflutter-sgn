import 'package:flutter/material.dart';

class TextClass {
  Widget text({required String text}) {
    return Text(
      text,
      style: const TextStyle(fontSize: 20),
    );
  }
}
