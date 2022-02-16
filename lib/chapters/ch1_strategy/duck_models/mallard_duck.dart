import 'package:head_first_design_patterns/chapters/ch1_strategy/duck_models/duck.dart';
import 'package:head_first_design_patterns/chapters/ch1_strategy/fly_behavior/fly_behavior.dart';
import 'package:head_first_design_patterns/chapters/ch1_strategy/fly_behavior/fly_with_wings.dart';
import 'package:head_first_design_patterns/chapters/ch1_strategy/quack_behavior/quack.dart';
import 'package:head_first_design_patterns/chapters/ch1_strategy/quack_behavior/quack_behavior.dart';

class MallardDuck extends Duck {
  MallardDuck({
    FlyBehavior flyBehavior = const FlyWithWings(),
    QuackBehavior quackBehavior = const Quack(),
  }) : super(flyBehavior, quackBehavior);

  @override
  String get displayTitle => "I'm a real Mallard duck";

  void display() {
    print("I'm a real Mallard duck");
  }
}
