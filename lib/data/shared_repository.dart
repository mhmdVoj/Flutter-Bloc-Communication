import 'package:flutter/material.dart';

class SharedRepository extends ChangeNotifier {
  bool _orederSubmitted = false;

  bool get orederSubmitted => _orederSubmitted;

  void submitOrder() {
    _orederSubmitted = true;
    notifyListeners();
  }
}
