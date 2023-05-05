import 'package:flutter/material.dart';

import '../gen/assets.gen.dart';
import '../gen/colors.gen.dart';
import '../models/hotel_model.dart';
import 'app_text.dart';
import 'custom_rating.dart';

class HotelCard extends StatelessWidget {
  final HotelModel hotel;

  const HotelCard({super.key, required this.hotel});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
          color: ColorName.lightGrey.withAlpha(50),
          borderRadius: BorderRadius.circular(20.0)),
      child: Row(
        children: [
          Flexible(
            flex: 1,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  bottomLeft: Radius.circular(20.0)),
              child: Image.asset(
                hotel.thumbnailPath,
                fit: BoxFit.cover,
                height: 150,
              ),
            ),
          ),
          Flexible(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AppText.large(
                      hotel.title,
                      fontSize: 18,
                      textAlign: TextAlign.left,
                      maxLine: 2,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Assets.icon.location.image(scale: 8),
                        const SizedBox(
                          width: 5,
                        ),
                        AppText.small(hotel.location)
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomRating(
                      ratingScore: hotel.ratingScore,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        AppTextSpan.large('\$${hotel.price}'),
                        AppTextSpan.medium(' /night')
                      ]),
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
