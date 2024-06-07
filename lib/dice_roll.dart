import 'package:flutter/material.dart';
import 'dart:math';

final randoMizer = Random();

class DiceRoller extends StatefulWidget {
  DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceroll = 2;
  void rollDice() {
    setState(() {
      currentDiceroll = randoMizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(context) {
    return Column(mainAxisSize: MainAxisSize.min, children: [
      Image.asset(
        'assets/images/dice-$currentDiceroll.png',
        width: 200,
      ),
      const SizedBox(height: 20),
      TextButton(
        onPressed: rollDice,
        style: TextButton.styleFrom(
          foregroundColor: Colors.white,
          textStyle: const TextStyle(fontSize: 28),
        ),
        child: const Text('Roll Dice'),
      ),
      Text(
        '$currentDiceroll',
        style: const TextStyle(color: Colors.blue, fontSize: 25),
      )
    ]);
  }
}
