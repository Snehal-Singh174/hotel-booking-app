import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hotel_booking_app/gen/colors.gen.dart';
import 'package:hotel_booking_app/gen/fonts.gen.dart';
import 'package:hotel_booking_app/screens/home_screen.dart';
import 'package:hotel_booking_app/screens/map_screen.dart';

import '../gen/assets.gen.dart';

class CustomNavBar extends StatelessWidget {
  final int index;

  const CustomNavBar({required this.index, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Row(
        children: [
          _NavBarIcon(
            iconPath: Assets.icon.home.path,
            text: 'Home',
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()));
            },
          ),
          _NavBarIcon(
            iconPath: Assets.icon.map.path,
            text: 'Map',
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const MapScreen()));
            },
          ),
          _NavBarIcon(
            iconPath: Assets.icon.booking.path,
            text: 'Booking',
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const MapScreen()));
            },
          ),
          _NavBarIcon(
            iconPath: Assets.icon.profile.path,
            text: 'Booking',
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const MapScreen()));
            },
          ),
        ],
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
    final color = isSelected ? ColorName.primaryColor : ColorName.lightGrey;
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            iconPath,
            color: color,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 12,
                fontFamily: FontFamily.workSans,
                fontWeight: FontWeight.w600,
                color: color),
          )
        ],
      ),
    );
  }
}
