import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku_app/models/number.dart';

class Item extends StatelessWidget {
  Item({Key? key,required this.number,required this.color,required this.sound}):super(key: key);
  Number number;
  Color color;
  String sound;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: color,
      child: Row(
        children: [
          Container(
              color: Color(0xffFEF6DB),
              child: Image.asset(number.image!)),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  number.enName,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
              splashColor: Colors.brown,
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(number.sound));

          },
              icon: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.play_arrow,color: Colors.white,),
              )),
          

        ],
      ),
    );
  }
}







class PhrasesItem extends StatelessWidget {
  PhrasesItem({Key?key,req,required this.number,required this.color}):super(key: key);
  Number number;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff50ADC7),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  number.jpName,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  number.enName,
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          IconButton(
              splashColor: Colors.brown,
              onPressed: () {
                final player = AudioPlayer();
                player.play(AssetSource(number.sound));

              },
              icon: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.play_arrow,color: Colors.white,),
              )),
        ],
      ),
    );
  }
}



