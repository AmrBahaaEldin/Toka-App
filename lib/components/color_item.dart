
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:language_learning/models/color_model.dart';


class ColorItem extends StatelessWidget {
  ColorItem({super.key,required this.colorItem});
  ColorModel colorItem;

  @override
  Widget build(BuildContext context) {
    return


      Container(
        height: 100,
        color:  const Color(0xff7C3FA1),
        child: Row(
          children: [
            Container(color: const Color(0xffFCF5DC),
                child:  Image(image:AssetImage(colorItem.image) ,)),
            Padding(

              padding: const EdgeInsets.only(left: 10, top: 20),
              child: Column(
                children: [
                  Text(colorItem.jColorName,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      )),
                  const SizedBox(height: 5),
                  Text(colorItem.colorName,
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

              player.play(AssetSource(colorItem.sound));


            }, icon:const Icon(Icons.play_arrow,
              color: Colors.white,
            ))
          ],
        ),
      );
  }
}
