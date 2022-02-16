import 'package:flutter/cupertino.dart';

class SubjectNotifier extends ChangeNotifier {
  int _value = 0;

  int get value => _value;

  set value(int value) {
    _value = value;
    notifyListeners();
  }
}
