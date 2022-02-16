import 'package:head_first_design_patterns/chapters/ch2_observer/simple/i_simple_observer.dart';
import 'package:head_first_design_patterns/chapters/ch2_observer/simple/i_simple_subject.dart';

class SimpleSubject implements ISimpleSubject {
  int _value = 0;
  final List<ISimpleObserver> _observers = [];

  @override
  void registerObserver(ISimpleObserver o) {
    _observers.add(o);
  }

  @override
  void removeObserver(ISimpleObserver o) {
    _observers.remove(o);
  }

  @override
  void notifyObservers() {
    for (final observer in _observers) {
      observer.update(_value);
    }
  }

  void setValue(int value) {
    this._value = value;
    notifyObservers();
  }
}
