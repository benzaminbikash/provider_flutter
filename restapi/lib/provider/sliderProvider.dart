import 'package:flutter/material.dart';

class sliderProvider with ChangeNotifier {
  double _value = 1.0;
  double get value {
    return _value;
  }

  void setValue(double val) {
    _value = val;
    notifyListeners();
  }
}
