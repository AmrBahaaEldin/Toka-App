import 'package:flutter/material.dart';
import 'package:language_learning/components/family_item.dart';

import '../models/family_model.dart';

class FamilyMembersScreen extends StatelessWidget {
  FamilyMembersScreen({super.key});
  List<Family>family =[
    Family(
        fjName: "musume",
        image: "assets/images/family_members/family_daughter.png",
        sound:"sounds/family_members/daughter.wav" ,
        fName: "daughter"),
    Family(
        fjName: "chichi ",
        image: "assets/images/family_members/family_father.png",
        sound:"sounds/family_members/father.wav" ,
        fName: "father"),
    Family(
        fjName: "sofu",
        image: "assets/images/family_members/family_grandfather.png",
        sound:"sounds/family_members/grand father.wav" ,
        fName: "grand father"),
    Family(
        fjName: "sobo",
        image: "assets/images/family_members/family_grandmother.png",
        sound:"sounds/family_members/grand mother.wav" ,
        fName: "grand mother"),
    Family(
        fjName: "haha ",
        image: "assets/images/family_members/family_mother.png",
        sound:"sounds/family_members/mother.wav" ,
        fName: "mother"),
    Family(
        fjName: "ani",
        image: "assets/images/family_members/family_older_brother.png",
        sound:"sounds/family_members/older brother.wav" ,
        fName: "older brother"),
    Family(
        fjName: "ane",
        image: "assets/images/family_members/family_older_sister.png",
        sound:"sounds/family_members/older sister.wav" ,
        fName: "older sister"),
    Family(
        fjName: "musuko",
        image: "assets/images/family_members/family_son.png",
        sound:"sounds/family_members/son.wav" ,
        fName: "son"),
    Family(
        fjName: "otouto",
        image: "assets/images/family_members/family_younger_brother.png",
        sound:"sounds/family_members/younger brohter.wav" ,
        fName: "younger brother"),
    Family(
        fjName: "imouto",
        image: "assets/images/family_members/family_younger_sister.png",
        sound:"sounds/family_members/younger sister.wav" ,
        fName: "younger sister"),

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
        title: const Text("FamilyMembers"),
      ),
    body:    ListView.builder(itemBuilder: (context, index) =>FamilyItem(family: family[index],),itemCount: family.length, )



    );
  }
}
