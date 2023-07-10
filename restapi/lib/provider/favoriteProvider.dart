import 'package:flutter/material.dart';

class favoriteProvider with ChangeNotifier {
  List<int> _data = [];

  List<int> get data {
    return _data;
  }

  void setAdd(val) {
    _data.add(val);
    notifyListeners();
  }

  void setRemove(val) {
    _data.remove(val);
    notifyListeners();
  }
}
