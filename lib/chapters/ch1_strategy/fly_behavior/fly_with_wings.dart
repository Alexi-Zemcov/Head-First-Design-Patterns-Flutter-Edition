import 'package:ch1_duck_behavior/chapters/ch1_strategy/fly_behavior/fly_behavior.dart';
import 'package:ch1_duck_behavior/snack_bar.dart';

class FlyWithWings implements FlyBehavior {
  const FlyWithWings();
  void fly() {
    showSnackBar("I'm flying!!");
  }
}
