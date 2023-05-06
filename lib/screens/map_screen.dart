import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hotel_booking_app/providers/map_location_provider.dart';
import 'package:hotel_booking_app/providers/map_markers_provider.dart';

import '../widgets/custom_nav_bar.dart';

class MapScreen extends ConsumerWidget {
  const MapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mapLocation = ref.watch(mapLocationProvider);
    final mapMarker = ref.watch(mapMarkersProvider);
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: const BackButton(),
      ),
      bottomNavigationBar: CustomNavBar(index: 1),
      body: Stack(
        children: [
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: mapLocation,
              zoom: 12.5,
            ),
            markers: mapMarker.maybeWhen(
              data: (markers) => markers,
              orElse: () => {},),
          ),
        ],
      ),
    );
  }
}
