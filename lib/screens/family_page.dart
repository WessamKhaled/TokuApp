import 'package:flutter/material.dart';
import 'package:toku_app/components/item.dart';

import '../models/number.dart';

class FamilyPage extends StatelessWidget {
  FamilyPage({Key? key}) :super(key: key);

  List<Number>Numbers = [
    Number(image: "assets/images/family_members/family_father.png",
        jpName: "Chichioya",
        enName: "Father",
        sound: 'sounds/family_members/father.wav'),

    Number(image: "assets/images/family_members/family_daughter.png",
        jpName: "Musume",
        enName: "daughter",
        sound: 'sounds/family_members/daughter.wav'),

    Number(image: "assets/images/family_members/family_grandfather.png",
        jpName: "Ojisan",
        enName: "Grand Father",
        sound: 'sounds/family_members/grand father.wav'),

    Number(image: "assets/images/family_members/family_mother.png",
        jpName: "Hahaoya",
        enName: "mother",
        sound: 'sounds/family_members/mother.wav'),

    Number(image: "assets/images/family_members/family_grandmother.png",
        jpName: "Sobo",
        enName: "Grand Mother",
        sound: 'sounds/family_members/grand mother.wav'),

    Number(image: "assets/images/family_members/family_older_brother.png",
        jpName: "Nisan",
        enName: "older brother",
        sound: 'sounds/family_members/older bother.wav'),

    Number(image: "assets/images/family_members/family_older_sister.png",
        jpName: "Ane",
        enName: "older sister",
        sound: 'sounds/family_members/older sister.wav'),

    Number(image: "assets/images/family_members/family_son.png",
        jpName: "Musuko",
        enName: "son",
        sound: 'sounds/family_members/son.wav'),

    Number(image: "assets/images/family_members/family_younger_brother.png",
        jpName: "Kyu",
        enName: "younger brother",
        sound: 'sounds/family_members/younger brohter.wav'),

    Number(image: "assets/images/family_members/family_younger_sister.png",
        jpName: "Ju",
        enName: "younger_sister",
        sound: 'sounds/family_members/younger sister.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text(
          "Family Members",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemBuilder: (context, num) {
          return Item(number: Numbers[num],
            color: Color(0xff558B37),
            sound: '',
            );
        },
        itemCount: Numbers.length,),
    );
  }

}
