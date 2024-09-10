import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';

import '../models/number.dart';

class ColorsPage extends StatelessWidget {
  ColorsPage({Key? key}) :super(key: key);

  List<Number>Numbers = [
    Number(image: "assets/images/colors/color_black.png",
        jpName: "Burakku",
        enName: "Black",
        sound: 'sounds/colors/black.wav'),

    Number(image: "assets/images/colors/color_brown.png",
        jpName: "Chairo",
        enName: "Brown",
        sound: 'sounds/colors/brown.wav'),

    Number(image: "assets/images/colors/color_dusty_yellow.png",
        jpName: "Hokori ppoi kiiro",
        enName: "Dusty Yellow",
        sound: 'sounds/colors/dusty yellow.wav'),

    Number(image: "assets/images/colors/color_gray.png",
        jpName: "Gurē",
        enName: "Gray",
        sound: 'sounds/colors/gray.wav'),

    Number(image: "assets/images/colors/color_green.png",
        jpName: "Midori",
        enName: "Green",
        sound: 'sounds/colors/green.wav'),

    Number(image: "assets/images/colors/color_red.png",
        jpName: "Aka",
        enName: "Red",
        sound: 'sounds/colors/red.wav'),

    Number(image: "assets/images/colors/color_white.png",
        jpName: "Ane",
        enName: "White",
        sound: 'sounds/colors/white.wav'),

    Number(image: "assets/images/colors/yellow.png",
        jpName: "Musuko",
        enName: "Yellow",
        sound: 'sounds/colors/yellow.wav'),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text(
          "Colors",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, num) {
          return Item(
            number: Numbers[num],
            color: Color(0xff79359F),
            sound: "");
        },
        itemCount: Numbers.length,),
    );
  }

}
