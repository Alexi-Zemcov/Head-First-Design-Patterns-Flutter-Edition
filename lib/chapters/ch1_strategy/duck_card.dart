import 'package:ch1_duck_behavior/chapters/ch1_strategy/duck_models/duck.dart';
import 'package:ch1_duck_behavior/constants/app_decorations.dart';
import 'package:ch1_duck_behavior/constants/app_edge_insets.dart';
import 'package:flutter/material.dart';

class DuckCard extends StatelessWidget {
  const DuckCard({
    Key? key,
    required this.duckModel,
    this.margin = AppEdgeInsets.t15h20,
  }) : super(key: key);

  final Duck duckModel;
  final EdgeInsets margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecorations.greyRoundedCard,
      padding: AppEdgeInsets.all10,
      margin: margin,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            duckModel.displayTitle,
            style: Theme.of(context).textTheme.headline5,
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            child: Text('Make Sound'),
            onPressed: duckModel.performQuack,
          ),
          ElevatedButton(
            child: Text('Perform Fly'),
            onPressed: duckModel.performFly,
          ),
          OutlinedButton(
            child: Text(
              'Perform Swim',
              style: Theme.of(context).textTheme.button,
            ),
            onPressed: duckModel.swim,
          ),
        ],
      ),
    );
  }
}
