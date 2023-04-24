import 'package:flutter/material.dart';

class ExampleOneProvider with ChangeNotifier {
  double value = 1.0;

  double get val => value;

  void setOpacity(double i) {
    value = i;
    notifyListeners();
  }
}
