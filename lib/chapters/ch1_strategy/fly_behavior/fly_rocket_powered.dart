import 'package:head_first_design_patterns/app_snack_bar.dart';
import 'package:head_first_design_patterns/chapters/ch1_strategy/fly_behavior/fly_behavior.dart';
import 'package:head_first_design_patterns/utilites/show_snack_bar.dart';

class FlyRocketPowered implements FlyBehavior {
  void fly() {
    showSnackBar(AppSnackBar("I'm flying with a rocket"));
  }
}
