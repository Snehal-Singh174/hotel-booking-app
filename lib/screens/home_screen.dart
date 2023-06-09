import 'package:flutter/material.dart';
import 'package:hotel_booking_app/gen/colors.gen.dart';
import 'package:hotel_booking_app/models/hotel_model.dart';
import 'package:hotel_booking_app/providers/all_hotels_provider.dart';
import 'package:hotel_booking_app/widgets/app_text.dart';
import 'package:intl/intl.dart';

import '../gen/assets.gen.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_icon_button.dart';
import '../widgets/custom_nav_bar.dart';
import '../widgets/custom_rating.dart';
import '../widgets/custom_text_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../widgets/hotel_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue,
      bottomNavigationBar: const CustomNavBar(index: 0),
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              margin: EdgeInsets.only(top: size.height * 0.30),
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    _HeaderSection(),
                    _SearchCard(),
                    SizedBox(
                      height: 20,
                    ),
                    _NearByHotels()
                  ],
                ),
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
            ))
      ],
    );
  }
}

class _SearchCard extends StatelessWidget {
  const _SearchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final locationTextController = TextEditingController();
    final dateFromTextController = TextEditingController();
    final dateToTextController = TextEditingController();

    locationTextController.text = 'Surat';
    dateFromTextController.text = dateToTextController.text =
        DateFormat('dd MMM yyyy').format(DateTime.now());

    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: ColorName.lightGrey.withAlpha(50))),
      child: Column(
        children: [
          Row(
            children: [
              Assets.icon.location.image(color: Colors.blue, scale: 8),
              const SizedBox(
                width: 20.0,
              ),
              CustomTextField(
                label: 'Where',
                controller: locationTextController,
              )
            ],
          ),
          Divider(),
          Row(
            children: [
              Assets.icon.calendar.image(color: Colors.blue, scale: 8),
              const SizedBox(
                width: 20.0,
              ),
              CustomTextField(
                label: 'From',
                controller: dateFromTextController,
              ),
              CustomTextField(
                label: 'To',
                controller: dateToTextController,
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const CustomButton(
            text: 'Search',
          )
        ],
      ),
    );
  }
}

class _NearByHotels extends ConsumerWidget {
  const _NearByHotels({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final hotels = ref.watch(allHotelsProvider);
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Nearby hotels',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
            Text(
              'See all',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
                color: ColorName.blue
              ),
            ),
          ],
        ),
        hotels.when(
            data: (hotels) {
              return ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: hotels.length,
                  itemBuilder: (context, index) {
                    return HotelCard(hotel: hotels[index]);
                  });
            },
            error: (error, stackTrace) => Text('Error: $error'),
            loading: () => const Center(child: CircularProgressIndicator()))
      ],
    );
  }
}

