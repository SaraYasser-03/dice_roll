import 'package:dice_roll/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  //main entry point of dart (excuted automatically)
  runApp(
    //arg: Widget -> building UI with code (by combined widgets "widget tree")
    const MaterialApp(
      //const -> helps dart optimize runtime performance of app, avoids data duplication in memory (save it once in memory)
      //MaterialApp -> main "root" widget (named parameters)
      debugShowCheckedModeBanner: false,
      home: //home: main argument in materialApp
          Scaffold(
        //Scaffold -> helps in building good looking screens
        body: GradientContainer(colors: [
          Color.fromARGB(255, 3, 14, 136),
          Color.fromARGB(255, 6, 111, 175)
        ]),
      ),
    ),
  );
}
