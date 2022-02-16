import 'package:head_first_design_patterns/app_snack_bar.dart';
import 'package:head_first_design_patterns/chapters/ch1_strategy/fly_behavior/fly_behavior.dart';
import 'package:head_first_design_patterns/chapters/ch1_strategy/quack_behavior/quack_behavior.dart';
import 'package:head_first_design_patterns/utilites/show_snack_bar.dart';

abstract class Duck {
  late FlyBehavior flyBehavior;
  late QuackBehavior quackBehavior;
  Duck(this.flyBehavior, this.quackBehavior);

  String get displayTitle;

  void set setFlyBehavior(FlyBehavior flyBehavior) {
    this.flyBehavior = flyBehavior;
  }

  void set setQuackBehavior(QuackBehavior quackBehavior) {
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
    showSnackBar(AppSnackBar('All ducks float, even decoys!'));
  }
}
