part of 'place_bloc.dart';

@immutable
sealed class PlaceEvent {}

class InitialFetchPlaceEvent extends PlaceEvent{}