import 'package:ch1_duck_behavior/chapters/ch1_strategy/quack_behavior/quack_behaviors.dart';
import 'package:ch1_duck_behavior/snack_bar.dart';

class MuteQuack implements QuackBehavior {
  const MuteQuack();
  @override
  void quack() {
    showSnackBar("<< Silence >>");
  }
}
