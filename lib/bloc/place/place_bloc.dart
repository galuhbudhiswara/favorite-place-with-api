import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:meta/meta.dart';

part 'place_event.dart';
part 'place_state.dart';

class PlaceBloc extends Bloc<PlaceEvent, PlaceState> {
  PlaceBloc() : super(PlaceInitial()) {
    on<InitialFetchPlaceEvent>(initialFetchPlaceEvent);
  }

  FutureOr<void> initialFetchPlaceEvent(
      InitialFetchPlaceEvent event, Emitter<PlaceState> emit) async {
    try {
      var dio = Dio();
      var response = await dio.request(
        'http://192.168.3.57:8000/api/places/',
        options: Options(
          method: 'GET',
        ),
      );

      if (response.statusCode == 200) {
        print(json.encode(response.data));
      } else {
        print(response.statusMessage);
      }
    } catch (e) {
      print(e);
    }
  }
}
