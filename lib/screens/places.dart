import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mx_favorite_place/bloc/place/place_bloc.dart';
import 'package:mx_favorite_place/providers/user_places.dart';
import 'package:mx_favorite_place/screens/add_place.dart';
import 'package:mx_favorite_place/widgets/places.list.dart';
import 'package:mx_favorite_place/models/place.dart';

class PlaceScreen extends StatefulWidget {
  const PlaceScreen({Key? key}) : super(key: key);

  @override
  State<PlaceScreen> createState() => _PlaceScreenState();
}

PlaceBloc placeBloc = PlaceBloc();

class _PlaceScreenState extends State<PlaceScreen> {
  @override
  void initState() {
    placeBloc.add(InitialFetchPlaceEvent());
    print("MASUK SINI");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // final userPlace = ref.watch(userPlaceProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Places'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const AddPlaceScreen(),
                ),
              );
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      // body: PlacesList(
      //   places: userPlace,
      // ),
    );
  }
}
