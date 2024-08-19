import 'package:flix_id/presentation/misc/constants.dart';
import 'package:flutter/material.dart';

class FlixTextField extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;
  final bool obsecureText;
  const FlixTextField(
      {super.key,
      required this.labelText,
      required this.controller,
      this.obsecureText = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        obscureText: obsecureText,
        decoration: InputDecoration(
            floatingLabelBehavior: FloatingLabelBehavior.auto,
            labelText: labelText,
            labelStyle: const TextStyle(color: ghostWhite),
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromARGB(255, 117, 116, 116)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: ghostWhite),
            )));
  }
}
