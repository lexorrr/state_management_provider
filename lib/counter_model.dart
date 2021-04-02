// The mixin is needed because it contains 'notifyListeners()'
import 'package:flutter/material.dart';

class CounterModel with ChangeNotifier {
  int _counter = 0;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }

  int get currentCount => _counter;

}