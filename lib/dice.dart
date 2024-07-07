import 'package:flutter/material.dart';

class Dice extends StatelessWidget {
  const Dice(this.id, {super.key});
  final int id;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/dice-$id.png',
      width: 300,
    );
  }
}
