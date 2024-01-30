import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';


import '../models/numbers_model.dart';

// ignore: must_be_immutable
class NumbersItem extends StatelessWidget {
  NumbersItem({super.key, required this.number});
  Numbers number;

  
  @override
  
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff4CABC6),
      height: 100,
      child: Row(
        children: [
          Container(
              color: const Color(0xfffef6db),
              child: Image(
                image: AssetImage(number.image),
              )),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 20),
            child: Column(
              /* textBaseline: TextBaseline.alphabetic,*/
              children: [
                Text(number.jpName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
                const SizedBox(height: 5),
                Text(number.enName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),
              ],
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: ()  {
             final player = AudioPlayer();
            
              player.play(AssetSource(number.sound));
             
              

              //play sound
            },
            icon: const Icon(
              Icons.play_arrow,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
