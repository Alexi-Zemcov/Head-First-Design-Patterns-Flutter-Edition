import 'package:ch1_duck_behavior/chapters/ch1_strategy/quack_behavior/quack_behaviors.dart';
import 'package:ch1_duck_behavior/snack_bar.dart';

class Quack implements QuackBehavior {
  const Quack();
  @override
  void quack() {
    showSnackBar("Quack");
  }
}
