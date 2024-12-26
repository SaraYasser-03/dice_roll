import 'package:dice_roll/dice_roller.dart';
import 'package:dice_roll/styled_text.dart';
import 'package:flutter/material.dart';

//var -> values can be changed
//final -> this data container will never receive a new value
//const -> the value stored in this data container is only known once code is excuted

class GradientContainer extends StatelessWidget { 
  const GradientContainer({super.key, required this.colors});

  final startAlignment = Alignment.topLeft;
  final endAlignment = Alignment.bottomRight;

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    //it is called automatically once it is found in the widget tree

    return Container(
      //doesn't support setting it to const
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),

      child: const Center(
          child:  DiceRoller(),
          ),
    );
  }
}
