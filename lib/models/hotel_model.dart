import 'package:google_maps_flutter/google_maps_flutter.dart';

class HotelModel {
  final String id;
  final String title;
  final String location;
  final String address;
  final String description;
  final String thumbnailPath;
  final List<String> imagePaths;
  final int totalReview;
  final double ratingScore;
  final double price;
  final LatLng coordinate;

  const HotelModel({
    required this.id,
    required this.title,
    required this.location,
    required this.address,
    required this.description,
    required this.thumbnailPath,
    required this.imagePaths,
    required this.price,
    required this.coordinate,
    this.totalReview = 0,
    this.ratingScore = 0,
  });

  static List<HotelModel> sampleHotel = const [
    HotelModel(
        id: '1',
        thumbnailPath: 'assets/image/thumbnail2.png',
        title: 'Alana Hotel',
        location: 'Bantul Regency, Yogyakarta',
        address: 'Jl. Progratris 8.5 km, Yogyakarta 55186',
        description: 'We are only 10 minute drive from the water castle',
        imagePaths: ['assets/image/gallery1.png', 'assets/image/gallery1.png', 'assets/image/gallery1.png'],
        price: 123,
        coordinate: LatLng(-7.81478719, 110.3692165),
        ratingScore: 10
    ),
    HotelModel(
        id: '2',
        thumbnailPath: 'assets/image/thumbnail2.png',
        title: 'Alana Hotel',
        location: 'Bantul Regency, Yogyakarta',
        address: 'Jl. Progratris 8.5 km, Yogyakarta 55186',
        description: 'We are only 10 minute drive from the water castle',
        imagePaths: ['assets/image/gallery1.png', 'assets/image/gallery1.png', 'assets/image/gallery1.png'],
        price: 123,
        coordinate: LatLng(-7.81478719, 110.3692165),
        ratingScore: 10
    ),
    HotelModel(
        id: '3',
        thumbnailPath: 'assets/image/thumbnail2.png',
        title: 'Alana Hotel',
        location: 'Bantul Regency, Yogyakarta',
        address: 'Jl. Progratris 8.5 km, Yogyakarta 55186',
        description: 'We are only 10 minute drive from the water castle',
        imagePaths: ['assets/image/gallery1.png', 'assets/image/gallery1.png', 'assets/image/gallery1.png'],
        price: 123,
        coordinate: LatLng(-7.81478719, 110.3692165),
        ratingScore: 10
    ),
    HotelModel(
        id: '4',
        thumbnailPath: 'assets/image/thumbnail2.png',
        title: 'Alana Hotel',
        location: 'Bantul Regency, Yogyakarta',
        address: 'Jl. Progratris 8.5 km, Yogyakarta 55186',
        description: 'We are only 10 minute drive from the water castle',
        imagePaths: ['assets/image/gallery1.png', 'assets/image/gallery1.png', 'assets/image/gallery1.png'],
        price: 123,
        coordinate: LatLng(-7.81478719, 110.3692165),
        ratingScore: 10
    ),
  ];
}
