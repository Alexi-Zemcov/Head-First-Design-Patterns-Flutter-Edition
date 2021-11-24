import 'package:ch1_duck_behavior/chapters/ch1_strategy/duck_models/duck.dart';
import 'package:ch1_duck_behavior/chapters/ch1_strategy/fly_behavior/fly_behavior.dart';
import 'package:ch1_duck_behavior/chapters/ch1_strategy/fly_behavior/fly_no_way.dart';
import 'package:ch1_duck_behavior/chapters/ch1_strategy/quack_behavior/mute_quack.dart';
import 'package:ch1_duck_behavior/chapters/ch1_strategy/quack_behavior/quack_behaviors.dart';

class DecoyDuck extends Duck {
  DecoyDuck({
    FlyBehavior flyBehavior = const FlyNoWay(),
    QuackBehavior quackBehavior = const MuteQuack(),
  }) : super(flyBehavior, quackBehavior);

  void display() {
    print("I'm a duck Decoy");
  }

  @override
  String get displayTitle => "I'm a duck Decoy";
}
