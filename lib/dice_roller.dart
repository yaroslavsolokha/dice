import 'package:dice/dice.dart';
import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();
int dice1 = 0;
int dice2 = 0;

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  void rollDice() {
    setState(() {
      dice1 = randomizer.nextInt(6) + 1;
      dice2 = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Dice(dice1),
        const SizedBox(
          height: 20,
        ),
        Dice(dice2),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Click Me'),
        )
      ],
    );
  }
}
