import 'package:flutter/material.dart';
import 'item.dart'; // import Item model ของเรา

class CartModel extends ChangeNotifier {
  final List<Item> _items = [];

  List<Item> get items => _items;
  int get itemCount => _items.length;
  double get totalPrice =>
      _items.fold(0, (total, current) => total + current.price);

  void add(Item item) {
    _items.add(item);
    notifyListeners();
  }

  void remove(Item item) {
    _items.remove(item);
    notifyListeners();
  }
}
