import 'package:flutter/material.dart';
import 'package:toku_app/screens/Phrases_page.dart';
import 'package:toku_app/screens/colors.dart';
import 'package:toku_app/screens/family_page.dart';
import 'package:toku_app/screens/numbers_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: Color(0xff46322B),
        title: Text("Toku",style: TextStyle(color: Colors.white),),
      ),
      body: Column(

        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                return NumbersPage();
              },));
            },
            color: Color(0xffEF9235),
            name: "Numbers",
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                return FamilyPage();
              },));
            },
            color: Color(0xff558B37),
            name: "Family Members",
          ),
          Category(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                return ColorsPage();
              },));
            },
            color: Color(0xff79359F),
            name: "Colors",
          ),

          Category(
            onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
              return PhrasesPage();
            },));
          },
            color: Color(0xff50ADC7),
            name: "Phrases",
          ),





        ],
      ),


    );
  }
}


class Category extends StatelessWidget {
  Category({this.color,this.name,this.onTap});
  String? name;
  Color? color;
  Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(

        alignment: Alignment.centerLeft,
        height: 50,
        color: color,
      
        padding: const EdgeInsets.only(left: 12),
        child: Text(name!,style: TextStyle(color: Colors.white),),
      
      ),
    );
  }
}










