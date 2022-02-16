import 'package:head_first_design_patterns/chapters/ch2_observer/change_notifier/observer.dart';
import 'package:head_first_design_patterns/chapters/ch2_observer/change_notifier/subject_notifier.dart';

void changeNotifierObserverCallExample() {
  final simpleSubject = SubjectNotifier();
  final simpleObserver = Observer(simpleSubject);

  simpleSubject
    ..value = 80
    ..removeListener(simpleObserver.display);
}
