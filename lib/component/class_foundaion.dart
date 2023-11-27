import 'package:flutter/material.dart';

class Foundation {
  late BuildContext context;
  Foundation({required this.context});
  Widget foundations({
    required Widget child,
    required double width,
    required double height,
    required Color color,
  }) {
    return Container(
        height: height,
        width: width, // Use double.infinity to fit screen width
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        alignment: Alignment.center,
        child: child);
  }
}
