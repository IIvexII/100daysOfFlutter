import 'dart:math';

import 'package:flutter/material.dart';

class GradientContainer extends StatefulWidget {
  const GradientContainer({super.key, required this.colors});
  final List<Color> colors;

  @override
  State<GradientContainer> createState() {
    return _GradientContainer();
  }
}

class _GradientContainer extends State<GradientContainer> {
  int currentDiceRoll = 3;

  void diceRollAnimation() {
    for (int i = 0; i < 10; i++) {
      Future.delayed(
        Duration(milliseconds: 100 * i),
        () {
          setState(() {
            currentDiceRoll = Random().nextInt(6) + 1;
          });
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        diceRollAnimation();
        setState(() {
          currentDiceRoll = Random().nextInt(6) + 1;
        });
      },
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: widget.colors,
            begin: Alignment.bottomRight,
            end: Alignment.topLeft,
          ),
        ),
        child: Center(
          child: Image.asset(
            'assets/images/dice-$currentDiceRoll.png',
            width: 200,
          ),
        ),
      ),
    );
  }
}
