import 'package:flutter/foundation.dart';

class Observer {
  final int _value = 0;
  final ChangeNotifier _subject;

  Observer(this._subject) {
    _subject.addListener(this.display);
  }

  void display() => print('Value: $_value');
}
