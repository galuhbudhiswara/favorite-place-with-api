// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:mx_favorite_place/models/place.dart';
// import 'dart:io';

// class UpdatePlaceNotifier extends StateNotifier<List<Place>> {
//   UpdatePlaceNotifier() : super(const []);

//   void updatePlace(String title, File image) {
//     final newPlace = Place(title: title, image: image);
//     state = [newPlace, ...state];
//   }
// }

// final updatePlaceProvider =
//     StateNotifierProvider<UpdatePlaceNotifier, List<Place>>(
//   (ref) => UpdatePlaceNotifier(),
// );
