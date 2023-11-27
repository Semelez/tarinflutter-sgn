import 'package:flutter/material.dart';
import 'package:testflutter/component/class_button.dart';
import 'package:testflutter/component/class_foundaion.dart';
import 'package:testflutter/component/class_text.dart';

class Components {
  late BuildContext context;
  Components({required this.context});
  late final text = TextClass();
  late final button = Buttons();
  late final foundation = Foundation(context: context);
}
