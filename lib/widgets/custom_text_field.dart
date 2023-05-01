import 'package:flutter/material.dart';

import 'app_text.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;

  const CustomTextField(
      {super.key, required this.label, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: TextField(
      controller: controller,
      decoration: InputDecoration(
          label: AppText.small(label), border: InputBorder.none),
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ));
  }
}
