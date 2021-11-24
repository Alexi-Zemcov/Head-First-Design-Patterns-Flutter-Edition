import 'package:ch1_duck_behavior/chapters/ch1_strategy/fly_behavior/fly_behavior.dart';
import 'package:ch1_duck_behavior/chapters/ch1_strategy/quack_behavior/quack_behaviors.dart';
import 'package:ch1_duck_behavior/snack_bar.dart';

abstract class Duck {
  late FlyBehavior flyBehavior;
  late QuackBehavior quackBehavior;
  Duck(this.flyBehavior, this.quackBehavior);

  String get displayTitle;

  void setFlyBehavior(FlyBehavior flyBehavior) {
    this.flyBehavior = flyBehavior;
  }

  void setQuackBehavior(QuackBehavior quackBehavior) {
    this.quackBehavior = quackBehavior;
  }

  void display();

  void performFly() {
    flyBehavior.fly();
  }

  void performQuack() {
    quackBehavior.quack();
  }

  void swim() {
    showSnackBar("All ducks float, even decoys!");
  }
}
