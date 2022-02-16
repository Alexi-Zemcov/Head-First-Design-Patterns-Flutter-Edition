import 'package:head_first_design_patterns/chapters/ch1_strategy/duck_models/duck.dart';
import 'package:head_first_design_patterns/chapters/ch1_strategy/fly_behavior/fly_behavior.dart';
import 'package:head_first_design_patterns/chapters/ch1_strategy/fly_behavior/fly_no_way.dart';
import 'package:head_first_design_patterns/chapters/ch1_strategy/quack_behavior/quack.dart';
import 'package:head_first_design_patterns/chapters/ch1_strategy/quack_behavior/quack_behavior.dart';

class ModelDuck extends Duck {
  ModelDuck({
    FlyBehavior flyBehavior = const FlyNoWay(),
    QuackBehavior quackBehavior = const Quack(),
  }) : super(flyBehavior, quackBehavior);

  void display() {
    print("I'm a model duck");
  }

  @override
  String get displayTitle => "I'm a model duck";
}
