import 'dart:math';
import 'package:flutter/material.dart';

final Random random = Random();

class DiceRoller extends StatefulWidget {
  //StatefulWidget -> if data changes, UI changes, (put in it only the part tha changes)
  // StatfeulWidgte-> Always works with 2 classes

  const DiceRoller({super.key});
  // sets the key parameter and sends it to the super class(Stateful)

  @override
  State<DiceRoller> createState() {
    //returns State object (State -> Generic Type)
    //<DiceRoller> -> write here which kind of State that should be managed here "Class Name" (DiceRoller)

    return _DiceRollerState(); //execute constructor function of DiceRollerState
  }
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 2;

  void rollDice() {
    setState(() {
      // re-excute build function
      currentDiceRoll = random.nextInt(6) + 1; //0-5 + 1 -> 1-6
    }); //anonymous function -> provided by State<>
    // call it in the place in the place where we update a value that is used inside of build and that will lead to some different UI output.
  }

  @override
  Widget build(BuildContext context) {
    //return widget tree
    return Column(
      mainAxisSize: MainAxisSize.min,
      //makes sure that it doesn't take the entire column
      children: [
        Image.asset(
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        TextButton(
          onPressed: rollDice, //function call
          style: TextButton.styleFrom(
            textStyle: const TextStyle(fontSize: 28, color: Colors.white,),
            padding: const EdgeInsets.only(top: 20),
          ),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}
