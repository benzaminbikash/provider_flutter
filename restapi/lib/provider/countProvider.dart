import 'package:flutter/material.dart';

class countProvider with ChangeNotifier {
  int _count = 0;
  int get count {
    return _count;
  }

  void setCount() {
    _count++;
    notifyListeners();
  }
}
