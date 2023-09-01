import 'package:flutter/material.dart';

class TextBox extends StatefulWidget {
  final TextEditingController? controller;
  final String? lable;
  const TextBox({super.key, this.controller, this.lable});

  @override
  State<TextBox> createState() => _TextBoxState();
}

class _TextBoxState extends State<TextBox> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
          border: OutlineInputBorder(), label: Text(widget.lable!)),
    );
  }
}
