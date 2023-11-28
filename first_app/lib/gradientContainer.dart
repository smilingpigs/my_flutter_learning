import 'package:first_app/roll_dice.dart';
import 'package:flutter/material.dart';
import 'package:first_app/styledText.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  // const GradientContainer({key}): super(key: key);
  const GradientContainer(this.color1, this.color2, {super.key});

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: startAlignment,
                end: endAlignment,
                colors: [color1, color2])),
        child: Center(child: RollDice()));
  }
}
