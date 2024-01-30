
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_learning/models/family_model.dart';

class FamilyItem extends StatelessWidget {
    FamilyItem({super.key,required this.family});
   Family family;

  @override
  Widget build(BuildContext context) {
    return


      Container(
      height: 100,
      color:  Colors.green,
      child: Row(
        children: [
          Container(color: const Color(0xffFCF5DC),
              child:  Image(image:AssetImage(family.image) ,)),
          Padding(

            padding: const EdgeInsets.only(left: 10, top: 20),
            child: Column(
              children: [
                Text(family.fjName,
                    style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                )),
              const SizedBox(height: 5),
                Text(family.fName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    )),

              ],
            ),
          ),
          const Spacer(flex: 1,),
          IconButton(onPressed: () {
            final player = AudioPlayer();

            player.play(AssetSource(family.sound));


          }, icon:const Icon(Icons.play_arrow,
            color: Colors.white,
          ))
        ],
      ),
    );
  }
}
