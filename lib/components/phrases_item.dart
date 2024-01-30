import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';



import '../models/phrases_model.dart';

// ignore: must_be_immutable
class PhrasesItem extends StatelessWidget {

  PhrasesModel phrasesData;

  PhrasesItem({super.key,required this.phrasesData});


  @override

  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff4CABC6),

      height: 100,
      child: Row(
        children: [

          SizedBox(
            width: 300,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                /* textBaseline: TextBaseline.alphabetic,*/
                children: [
                  Text(phrasesData.jpName,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(


                        color: Colors.white,
                        fontSize: 20,
                      )),
                  const SizedBox(height: 5),
                  Text(phrasesData.enName,
                      overflow:TextOverflow.ellipsis ,
                      maxLines: 2,
                      style: const TextStyle(



                        color: Colors.white,
                        fontSize: 20,
                      )),
                ],
              ),
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          IconButton(
            onPressed: ()  {
              final player = AudioPlayer();

              player.play(AssetSource(phrasesData.sound));



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
