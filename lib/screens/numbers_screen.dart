import 'package:flutter/material.dart';
import 'package:language_learning/components/number_item.dart';

import '../models/numbers_model.dart';

// ignore: must_be_immutable
class NumbersScreen extends StatelessWidget {
   NumbersScreen({super.key});
   List <Numbers>numbers= [
   Numbers(
   image: "assets/images/numbers/number_one.png",
   jpName: "ichi",
   enName: "one",
  sound: 'sounds/numbers/number_one_sound.mp3'),
   
     Numbers(
         image: "assets/images/numbers/number_two.png",
         jpName: "ni",
         enName: "two", 
         sound: 'sounds/numbers/number_two_sound.mp3'),
     Numbers(
         image: "assets/images/numbers/number_three.png",
         jpName: "san",
         enName: "three", 
         sound: 'sounds/numbers/number_three_sound.mp3'),
     Numbers(
         image: "assets/images/numbers/number_four.png",
         jpName: "shi",
         enName: "four", 
         sound: 'sounds/numbers/number_four_sound.mp3'),
     Numbers(
         image: "assets/images/numbers/number_five.png",
         jpName: "go",
         enName: "five", 
         sound: 'sounds/numbers/number_five_sound.mp3'),
     Numbers(
         image: "assets/images/numbers/number_six.png",
         jpName: "roku",
         enName: "six",
          sound: 'sounds/numbers/number_six_sound.mp3'),
     Numbers(
         image: "assets/images/numbers/number_seven.png",
         jpName: "shichi",
         enName: "seven",
          sound: 'sounds/numbers/number_seven_sound.mp3'),
     Numbers(
         image: "assets/images/numbers/number_eight.png",
         jpName: "hachi",
         enName: "eight",
          sound: 'sounds/numbers/number_eight_sound.mp3'),
     Numbers(
         image: "assets/images/numbers/number_nine.png",
         jpName: "kyuu",
         enName: "nine", 
         sound: 'sounds/numbers/number_nine_sound.mp3'),
     Numbers(
         image: "assets/images/numbers/number_ten.png",
         jpName: "juu",
         enName: "ten", 
         sound: 'sounds/numbers/number_ten_sound.mp3'),

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
        title: const Text("Numbers"),
      ),
      
      

      
      body:ListView.builder(itemBuilder: (context, index) =>NumbersItem(number: numbers[index]) ,itemCount: numbers.length,)



    );
  }
}
//model  called this object
