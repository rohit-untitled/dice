import 'package:flutter/material.dart';
import 'dart:math';

final randomizer = Random();
class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});


  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{

  var currentDiceRoll = 2;
  

  void rollDice(){
    setState(() {
      currentDiceRoll = randomizer.nextInt(6)+1;
      
    });
    
  }
  @override
  Widget build(context) {
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/dice-$currentDiceRoll.png',
              width: 220,
            ),
            TextButton(
              onPressed: rollDice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.only(
                  top: 20,
                  bottom: 10,
                  left: 10,
                  right: 10,
                ),
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              child: const Text("ROLL"),
            )
          ],
        );
  }
}