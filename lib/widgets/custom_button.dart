import 'package:flutter/material.dart';

import '../gen/colors.gen.dart';
import 'app_text.dart';

class CustomButton extends StatelessWidget {
  final String text;

  const CustomButton({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(ColorName.yellow),
        elevation: MaterialStateProperty.all(0.0),
        minimumSize: MaterialStateProperty.all(
          const Size(200, 50),
        ),
      ),
      child: AppText.medium(text),
    );
  }
}
