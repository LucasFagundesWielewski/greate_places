import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:greate_places/models/place.dart';

class GreatPlaces with ChangeNotifier {
  final List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  int get itemCount {
    return _items.length;
  }

  Place getItemByIndex(int index) {
    return _items[index];
  }

  void addPlace(String title, File image) {
    final newPlace = Place(
      id: Random().nextDouble().toString(),
      title: title,
      location: const PlaceLocation(latitude: 0.0, longitude: 0.0, address: ''),
      image: image,
    );

    _items.add(newPlace);
    notifyListeners();
  }
}
