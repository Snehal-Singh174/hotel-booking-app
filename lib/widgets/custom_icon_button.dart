import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Widget icon;
  final Function()? onPressed;
  final double size;

  const CustomIconButton(
      {super.key, required this.icon, this.onPressed, this.size = 50});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.0)),
      child: IconButton(onPressed: () {}, icon: icon),
    );
  }
}
