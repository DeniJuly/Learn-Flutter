import 'package:flutter/foundation.dart';

class Cart with ChangeNotifier {
  int _cartCount = 0;

  int get cartCount => _cartCount;

  set cartCount(int val) {
    _cartCount = val;
    notifyListeners();
  }
}
