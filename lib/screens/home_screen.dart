import 'package:flutter/material.dart';
import 'package:language_learning/screens/colors_screen.dart';
import 'package:language_learning/screens/familyMembers_screen.dart';
import 'package:language_learning/screens/numbers_screen.dart';
import 'package:language_learning/screens/phrases_screen.dart';

import '../components/category_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffef6db),
      appBar: AppBar(
        backgroundColor: const Color(0Xff46322b),
        elevation: 0,
        title: const Center(
          child: Text("Tok", style: TextStyle(color: Colors.white)),
        ),
      ),
      body: Column(
        children: [
          Category(
              name: "Numbers",
              color: Colors.orange,
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => NumbersScreen()));
              }),

          Category(
            name: "Family Members",
            color: Colors.green,
            ontap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>  FamilyMembersScreen()));
            },
          ),
          Category(
              name: "Colors",
              color: Colors.deepPurpleAccent,
              ontap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ColorScreen()));
              },
              ),
          Category(
            name: "Phrases",
            color: Colors.blueAccent,
             ontap: () {
              Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>   PhrasesScreen()));
  },
          ),

          ///////////////////////////////////////////////////
          Expanded(
            child: Container(
              padding: const EdgeInsetsDirectional.all(10),
              alignment: Alignment.bottomRight,
              child: const Image(
                image: AssetImage("assets/decision.png"),
                width: 110,
              ),
            ),
          )
        ],
      ),
    );
  }
}
