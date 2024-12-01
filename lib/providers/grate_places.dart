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

  Place getItemById(String id) {
    return _items.firstWhere((place) => place.id == id);
  }
}
