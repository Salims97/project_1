import 'package:flutter/material.dart';

class Texts extends StatelessWidget {
  final TextInputType type;
  final String hintText, msg;
  final IconData icon;
  final TextEditingController x;

  // ignore: use_key_in_widget_constructors
  const Texts({
    required this.type,
    required this.hintText,
    required this.icon,
    required this.x,
    required this.msg,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorWidth: 1,
      keyboardType: type,
      cursorColor: Colors.black,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: hintText,
        prefixIcon: Icon(
          icon,
          color: const Color.fromARGB(255, 39, 31, 106),
        ),
      ),
      controller: x,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "please enter $msg";
        }
        return null;
      },
    );
  }
}
