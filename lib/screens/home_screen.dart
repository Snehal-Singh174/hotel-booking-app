import 'package:flutter/material.dart';
import 'package:hotel_booking_app/gen/colors.gen.dart';
import 'package:hotel_booking_app/models/hotel_model.dart';
import 'package:hotel_booking_app/providers/all_hotels_provider.dart';
import 'package:hotel_booking_app/widgets/app_text.dart';
import 'package:intl/intl.dart';

import '../gen/assets.gen.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_icon_button.dart';
import '../widgets/custom_text_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
              margin: EdgeInsets.only(top: size.height * 0.30),
              color: Colors.white,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  _HeaderSection(),
                  _SearchCard(),
                  const SizedBox(
                    height: 20,
                  ),
                  _NearByHotels()
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
        hotels.when(
            data: (hotels) {
              return ListView.builder(
                  shrinkWrap: true,
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
                        const SizedBox(width: 5,),
                        AppText.small(hotel.location)
                      ],
                    ),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
