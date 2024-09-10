import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';

import '../models/number.dart';

class PhrasesPage extends StatelessWidget {
  PhrasesPage({Key? key}) :super(key: key);

  List<Number>Numbers = [
    Number(
        jpName: "Kodoku Suru koto o wasurenaide kudasai",
        enName: "dont forget to subscribe",
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),

    Number(
        jpName: "watashi wa puroguramingu ga daisukidesu",
        enName: "i love programming",
        sound: 'sounds/phrases/i_love_programming.wav'),

    Number(
        jpName: "puroguramingu wa kantandesu",
        enName: "programming is easy",
        sound: 'sounds/phrases/programming_is_easy.wav'),

    Number(
        jpName: "Doko ni iku no",
        enName: "where are you going",
        sound: 'sounds/phrases/where_are_you_going.wav'),

    Number(
        jpName: "Sobo",
        enName: "what is your name",
        sound: 'sounds/phrases/what_is_your_name.wav'),

    Number(
        jpName: "Nisan",
        enName: "i love anime",
        sound: 'assets/sounds/phrases/i_love_anime.wav'),

    Number(
        jpName: "Ane",
        enName: "how are you feeling",
        sound: 'sounds/phrases/how_are_you_feeling.wav'),

    Number(
        jpName: "Musuko",
        enName: "are you coming",
        sound: 'assets/sounds/phrases/are_you_coming.wav'),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text(
          "Phrases",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, num) {
          return PhrasesItem(number: Numbers[num],
            color: Color(0xff50ADC7),
            // sound: '',
          );
        },
        itemCount: Numbers.length,),
    );
  }

}
