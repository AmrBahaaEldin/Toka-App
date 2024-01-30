import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  const Category( {super.key, required this.name, required this.color, this.ontap});
  final String name;
  final Color color;
  final Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap
       
      ,
      child: Container(
          padding: const EdgeInsets.all(10),
          alignment: Alignment.centerLeft,
          width: double.infinity,
          height: 60,
          color: color,
          child: Text(
            name,
            style: const TextStyle(color: Colors.white, fontSize: 25),
          )),
    );
  }
}
