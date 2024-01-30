import 'package:flutter/material.dart';

import 'package:language_learning/components/phrases_item.dart';
import 'package:language_learning/models/phrases_model.dart';



// ignore: must_be_immutable
class PhrasesScreen extends StatelessWidget {
  PhrasesScreen({super.key});
  List <PhrasesModel>phrases= [
    PhrasesModel(

        jpName: "kimasu ka",
        enName: "are_you_coming",
        sound: 'sounds/phrases/are_you_coming.wav'),
    PhrasesModel(

        jpName: "Koudoku o wasurenaide kudasai",
        enName: "dont_forget_to_subscribe",
        sound: 'sounds/phrases/dont_forget_to_subscribe.wav'),
    PhrasesModel(

        jpName: "Okimochi wa ikaga desu ka",
        enName: "how_are_you_feeling",
        sound: 'sounds/phrases/how_are_you_feeling.wav'),
    PhrasesModel(

        jpName: "Watashi wa anime ga daisuki desu",
        enName: "i_love_anime",
        sound: 'sounds/phrases/i_love_anime.wav'),
    PhrasesModel(

        jpName: "Watashi wa puroguramingu ga daisuki desu",
        enName: "i_love_programming",
        sound: 'sounds/phrases/i_love_programming.wav'),
    PhrasesModel(

        jpName: "Puroguramingu wa kantan desu",
        enName: "programming_is_easy",
        sound: 'sounds/phrases/programming_is_easy.wav'),
    PhrasesModel(

        jpName: "Anata no onamae wa nan desu ka",
        enName: "what_is_your_name",
        sound: 'sounds/phrases/what_is_your_name.wav'),
    PhrasesModel(

        jpName: "Doko ni iku no desu ka",
        enName: "where_are_you_going",
        sound: 'sounds/phrases/where_are_you_going.wav'),
    PhrasesModel(

        jpName: "Hai, ikimasu",
        enName: "are_you_coming",
        sound: 'sounds/phrases/yes_im_coming.wav'),



  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0Xff46322b),

          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back_ios)),
          title: const Text("Phrases"),
        ),




        body:ListView.builder(itemBuilder: (context, index) =>PhrasesItem(phrasesData: phrases[index]),itemCount: phrases.length,)



    );
  }
}
//model  called this object
