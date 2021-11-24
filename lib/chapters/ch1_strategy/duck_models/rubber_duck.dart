import 'package:ch1_duck_behavior/chapters/ch1_strategy/duck_models/duck.dart';
import 'package:ch1_duck_behavior/chapters/ch1_strategy/fly_behavior/fly_behavior.dart';
import 'package:ch1_duck_behavior/chapters/ch1_strategy/fly_behavior/fly_no_way.dart';
import 'package:ch1_duck_behavior/chapters/ch1_strategy/quack_behavior/quack_behaviors.dart';
import 'package:ch1_duck_behavior/chapters/ch1_strategy/quack_behavior/squeak.dart';

class RubberDuck extends Duck {
  RubberDuck({
    FlyBehavior flyBehavior = const FlyNoWay(),
    QuackBehavior quackBehavior = const Squeak(),
  }) : super(flyBehavior, quackBehavior);

  @override
  void display() {
    print("I'm a rubber duckie");
  }

  @override
  String get displayTitle => "I'm a rubber duckie";
}
