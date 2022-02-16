import 'package:head_first_design_patterns/app_snack_bar.dart';
import 'package:head_first_design_patterns/chapters/ch1_strategy/quack_behavior/quack_behavior.dart';
import 'package:head_first_design_patterns/utilites/show_snack_bar.dart';

class FakeQuack implements QuackBehavior {
  @override
  void quack() {
    showSnackBar(AppSnackBar('Qwak'));
  }
}
