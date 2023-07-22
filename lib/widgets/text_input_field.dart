import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  const TextInputField(
      {super.key,
      required this.textEditingController,
      required this.hintText,
      this.isPass = false,
      required this.textInputType});

  final TextEditingController textEditingController;
  final String hintText;
  final bool isPass;
  final TextInputType textInputType;

  @override
  Widget build(BuildContext context) {
    final inputFiledBorder =
        OutlineInputBorder(borderSide: BorderSide(color: Colors.black));
    return TextField(
      controller: textEditingController,
      style: TextStyle(color: Colors.white.withOpacity(1)),
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white.withOpacity(0.6)),
          border: inputFiledBorder,
          focusedBorder: inputFiledBorder,
          enabledBorder: inputFiledBorder,
          filled: true,
          contentPadding: const EdgeInsets.all(5)),
      keyboardType: textInputType,
      obscureText: isPass,
    );
  }
}
