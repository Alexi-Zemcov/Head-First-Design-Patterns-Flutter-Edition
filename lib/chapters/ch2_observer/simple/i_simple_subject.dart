import 'package:head_first_design_patterns/chapters/ch2_observer/simple/i_simple_observer.dart';

abstract class ISimpleSubject {
  void registerObserver(ISimpleObserver o);
  void removeObserver(ISimpleObserver o);
  void notifyObservers();
}
