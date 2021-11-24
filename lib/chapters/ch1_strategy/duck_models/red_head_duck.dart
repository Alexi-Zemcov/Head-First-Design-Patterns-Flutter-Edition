import 'package:ch1_duck_behavior/chapters/ch1_strategy/duck_models/duck.dart';
import 'package:ch1_duck_behavior/chapters/ch1_strategy/fly_behavior/fly_behavior.dart';
import 'package:ch1_duck_behavior/chapters/ch1_strategy/fly_behavior/fly_with_wings.dart';
import 'package:ch1_duck_behavior/chapters/ch1_strategy/quack_behavior/quack.dart';
import 'package:ch1_duck_behavior/chapters/ch1_strategy/quack_behavior/quack_behaviors.dart';

class RedHeadDuck extends Duck {
  RedHeadDuck({
    FlyBehavior flyBehavior = const FlyWithWings(),
    QuackBehavior quackBehavior = const Quack(),
  }) : super(flyBehavior, quackBehavior);

  void display() {
    print("I'm a real Red Headed duck");
  }

  @override
  String get displayTitle => "I'm a real Red Headed duck";
}
