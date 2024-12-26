import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
 const StyledText(this.text, {super.key});
  //this.text -> look for an var called text, and sets it to the value of arg

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(color: Colors.white, fontSize: 28),
    );
  }
}
