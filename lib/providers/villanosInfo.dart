import 'package:flutter/material.dart';

class VillanosInfo extends ChangeNotifier {
  String _villano = 'Red Skull';

  String get villano => _villano;

  void set villano(String value) {
    _villano = value;

    notifyListeners();
  }
}
