import 'package:flutter/material.dart';
import 'package:head_first_design_patterns/chapters/ch1_strategy/duck_models/duck.dart';
import 'package:head_first_design_patterns/constants/app_decorations.dart';
import 'package:head_first_design_patterns/constants/app_edge_insets.dart';

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
            onPressed: duckModel.performQuack,
            child: Text('Make Sound'),
          ),
          ElevatedButton(
            onPressed: duckModel.performFly,
            child: Text('Perform Fly'),
          ),
          OutlinedButton(
            onPressed: duckModel.swim,
            child: Text(
              'Perform Swim',
              style: Theme.of(context).textTheme.button,
            ),
          ),
        ],
      ),
    );
  }
}
