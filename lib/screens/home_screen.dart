import 'package:flutter/material.dart';
import 'package:hotel_booking_app/widgets/app_text.dart';

import '../gen/assets.gen.dart';
import '../widgets/custom_icon_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              margin: EdgeInsets.only(top: size.height * 0.25),
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  _HeaderSection(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _HeaderSection extends StatelessWidget {
  const _HeaderSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage: Assets.image.photo.provider(),
            ),
            CustomIconButton(
              icon: Assets.icon.notification.image(),
            )
          ],
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: AppText.large(
            'Welcome back 👋',
            color: Colors.white,
          )
        )
      ],
    );
  }
}
