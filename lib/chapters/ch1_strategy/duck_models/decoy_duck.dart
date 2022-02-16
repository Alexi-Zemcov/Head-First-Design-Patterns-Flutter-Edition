import 'package:head_first_design_patterns/chapters/ch1_strategy/duck_models/duck.dart';
import 'package:head_first_design_patterns/chapters/ch1_strategy/fly_behavior/fly_behavior.dart';
import 'package:head_first_design_patterns/chapters/ch1_strategy/fly_behavior/fly_no_way.dart';
import 'package:head_first_design_patterns/chapters/ch1_strategy/quack_behavior/mute_quack.dart';
import 'package:head_first_design_patterns/chapters/ch1_strategy/quack_behavior/quack_behavior.dart';

class DecoyDuck extends Duck {
  DecoyDuck({
    FlyBehavior flyBehavior = const FlyNoWay(),
    QuackBehavior quackBehavior = const MuteQuack(),
  }) : super(flyBehavior, quackBehavior);

  @override
  String get displayTitle => "I'm a duck Decoy";

  void display() {
    print("I'm a duck Decoy");
  }
}
