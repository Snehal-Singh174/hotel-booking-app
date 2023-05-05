import 'package:flutter/material.dart';

import '../gen/colors.gen.dart';
import 'app_text.dart';

class CustomRating extends StatelessWidget {
  final double ratingScore;
  final int totalReviews;
  final bool showReviews;

  const CustomRating(
      {required this.ratingScore,
        this.totalReviews = 0,
        this.showReviews = false,
        Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const size = 15.0;
    return Row(
      children: [
        for (int i = 1; i <= 5; i++)
          Container(
            margin: const EdgeInsets.all(1.0),
            height: size,
            width: size,
            decoration: BoxDecoration(
              color: i <= ratingScore ? ColorName.yellow : Colors.white,
              shape: BoxShape.circle,
              border: Border.all(
                color: ColorName.yellow,
                width: 2,
              ),
            ),
          ),
        const SizedBox(
          width: 10.0,
        ),
        AppText.medium('$ratingScore'),
      ],
    );
  }
}
