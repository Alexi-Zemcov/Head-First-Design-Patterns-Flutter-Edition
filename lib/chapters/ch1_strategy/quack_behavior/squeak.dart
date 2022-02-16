import 'package:head_first_design_patterns/app_snack_bar.dart';
import 'package:head_first_design_patterns/chapters/ch1_strategy/quack_behavior/quack_behavior.dart';
import 'package:head_first_design_patterns/utilites/show_snack_bar.dart';

class Squeak implements QuackBehavior {
  const Squeak();

  @override
  void quack() {
    showSnackBar(AppSnackBar('Squeak'));
  }
}
