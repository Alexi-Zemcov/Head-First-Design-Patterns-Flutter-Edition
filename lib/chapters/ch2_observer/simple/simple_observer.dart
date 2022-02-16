import 'package:head_first_design_patterns/chapters/ch2_observer/simple/i_simple_observer.dart';
import 'package:head_first_design_patterns/chapters/ch2_observer/simple/i_simple_subject.dart';

class SimpleObserver implements ISimpleObserver {
  int? value;
  final ISimpleSubject simpleSubject;

  SimpleObserver(this.simpleSubject) {
    simpleSubject.registerObserver(this);
  }

  @override
  void update(int value) {
    this.value = value;
    display();
  }

  void display() {
    print('Value: $value');
  }
}
