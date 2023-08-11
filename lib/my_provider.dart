import 'package:flutter/material.dart';

class Myprovider extends ChangeNotifier {
  String language = "en";
  ThemeMode theme = ThemeMode.light;

  void ChangeLangauge(String lang) {
    language = lang;
    notifyListeners();
  }

  void Changetheme(ThemeMode mode) {
    theme = mode;
    notifyListeners();
  }
}
