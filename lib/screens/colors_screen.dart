import 'package:flutter/material.dart';
import 'package:language_learning/components/color_item.dart';
import 'package:language_learning/models/color_model.dart';

class ColorScreen extends StatelessWidget {
   ColorScreen({super.key});

  List<ColorModel>colorData =[
    ColorModel(
        colorName: "Black",
        image: "assets/images/colors/color_black.png",
        sound:"sounds/colors/black.wav" ,
        jColorName:"kuro"),
    ColorModel(
        colorName: "Brown",
        image: "assets/images/colors/color_brown.png",
        sound:"sounds/colors/brown.wav" ,
        jColorName:"chairo"),
    ColorModel(
        colorName: "dusty yellow",
        image: "assets/images/colors/color_dusty_yellow.png",
        sound:"sounds/colors/dusty yellow.wav" ,
        jColorName:"hokorippoi kiiro"),
    ColorModel(
        colorName: "gray",
        image: "assets/images/colors/color_gray.png",
        sound:"sounds/colors/gray.wav" ,
        jColorName:"haiiro"),
    ColorModel(
        colorName: "green",
        image: "assets/images/colors/color_green.png",
        sound:"sounds/colors/green.wav" ,
        jColorName:"midori"),
    ColorModel(
        colorName: "red",
        image: "assets/images/colors/color_red.png",
        sound:"sounds/colors/red.wav" ,
        jColorName:"aka"),
    ColorModel(
        colorName: "white",
        image: "assets/images/colors/color_white.png",
        sound:"sounds/colors/white.wav" ,
        jColorName:"shiro"),
    ColorModel(
        colorName: "yellow",
        image: "assets/images/colors/yellow.png",
        sound:"sounds/colors/yellow.wav" ,
        jColorName:"kiiro"),


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
          title: const Text("Colors"),
        ),
        body:    ListView.builder(itemBuilder: (context, index) =>ColorItem(colorItem:colorData[index] ),itemCount: colorData.length,),
    );
  }
}
