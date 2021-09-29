import 'package:flutter/material.dart';

class HeroesInfo extends ChangeNotifier {
  String _heroe = 'Capitán América';
  Color colorBase = Colors.blue;

  String get heroe => _heroe;

  void set heroe(String value) {
    _heroe = value;

    colorBase = (_heroe == 'IronMan') ? Colors.red : Colors.blue;

    notifyListeners();
  }
}
