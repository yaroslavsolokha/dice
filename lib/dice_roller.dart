import 'package:dice/dice.dart';
import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var dice1 = const Dice(0);
  var dice2 = const Dice(0);

  void rollDice() {
    setState(() {
      dice1 = Dice(randomizer.nextInt(6) + 1);
      dice2 = Dice(randomizer.nextInt(6) + 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        dice1,
        const SizedBox(
          height: 20,
        ),
        dice2,
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
              foregroundColor: Colors.white,
              textStyle: const TextStyle(fontSize: 28)),
          child: const Text('Click Me'),
        )
      ],
    );
  }
}
