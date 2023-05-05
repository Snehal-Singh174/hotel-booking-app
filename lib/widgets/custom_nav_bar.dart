import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  final int index;

  const CustomNavBar({required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        children: [],
      ),
    );
  }
}

class _NavBarIcon extends StatelessWidget {
  final String iconPath;
  final String text;
  final Function()? onTap;
  final bool isSelected;

  const _NavBarIcon({
    Key? key,
    required this.iconPath,
    required this.text,
    this.onTap,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
      ),
    );
  }
}
