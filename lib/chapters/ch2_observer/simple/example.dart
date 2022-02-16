import 'package:head_first_design_patterns/chapters/ch2_observer/simple/simple_observer.dart';
import 'package:head_first_design_patterns/chapters/ch2_observer/simple/simple_subject.dart';

void simpleObserverCallExample() {
  final simpleSubject = SimpleSubject();
  final simpleObserver = SimpleObserver(simpleSubject);

  simpleSubject
    ..setValue(80)
    ..removeObserver(simpleObserver);
}
