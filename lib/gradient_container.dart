import 'package:flutter/material.dart';
import 'package:rolldice/dice_roll.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({super.key});

  @override
  Widget build(context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 26, 2, 80),
            Color.fromARGB(255, 150, 86, 240)
          ], begin: Alignment.topLeft, end: Alignment.bottomRight),
        ),
        child: Center(
          child: DiceRoller(),
        ));
  }
}
