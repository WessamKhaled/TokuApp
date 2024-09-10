import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';

import '../models/number.dart';

class NumbersPage extends StatelessWidget {
  NumbersPage({Key? key}) :super(key: key);

  List<Number>Numbers = [
    Number(image: "assets/images/numbers/number_one.png",
        jpName: "Icih",
        enName: "One",
        sound: 'sounds/numbers/number_one_sound.mp3'),

    Number(image: "assets/images/numbers/number_two.png",
        jpName: "Ni",
        enName: "Two",
        sound: 'sounds/numbers/number_two_sound.mp3'),

    Number(image: "assets/images/numbers/number_three.png",
        jpName: "San",
        enName: "Three",
        sound: 'sounds/numbers/number_three_sound.mp3'),

    Number(image: "assets/images/numbers/number_four.png",
        jpName: "Shi",
        enName: "Four",
        sound: 'sounds/numbers/number_four_sound.mp3'),

    Number(image: "assets/images/numbers/number_five.png",
        jpName: "Go",
        enName: "Five",
        sound: 'sounds/numbers/number_five_sound.mp3'),

    Number(image: "assets/images/numbers/number_six.png",
        jpName: "Roku",
        enName: "Six",
        sound: 'sounds/numbers/number_six_sound.mp3'),

    Number(image: "assets/images/numbers/number_seven.png",
        jpName: "Sebun",
        enName: "Seven",
        sound: 'sounds/numbers/number_seven_sound.mp3'),

    Number(image: "assets/images/numbers/number_eight.png",
        jpName: "hachi",
        enName: "Eight",
        sound: 'sounds/numbers/number_eight_sound.mp3'),

    Number(image: "assets/images/numbers/number_nine.png",
        jpName: "Kyu",
        enName: "Nine",
        sound: 'sounds/numbers/number_nine_sound.mp3'),

    Number(image: "assets/images/numbers/number_ten.png",
        jpName: "Ju",
        enName: "Ten",
        sound: 'sounds/numbers/number_ten_sound.mp3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text(
          "Numbers",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, num) {
          return Item(number: Numbers[num],
            color: Color(0xffEf9235),
            sound:"");
        },
        itemCount: Numbers.length,),
    );
  }

}
