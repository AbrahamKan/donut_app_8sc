import 'package:flutter/material.dart';
import '../utils/donut_tile.dart';

class DonutTab extends StatelessWidget {
  //Lista de donas
  final List donutsOnSale = [
    //[dontFalvor, donutPrice, donutColor, imageName]
    ["ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Chocolate", "95", Colors.brown, "lib/images/chocolate_donut.png"],

    ["Donut ", "50", Colors.blue, "lib/images/donut1.png"],
    ["Donut ", "60", Colors.red, "lib/images/donut2.png"],
    ["Donut ", "70", Colors.purple, "lib/images/donut3.png"],
    ["Donut ", "80", Colors.brown, "lib/images/donut4.png"]

    
  ];

  DonutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, childAspectRatio: 1/1.5),
      itemBuilder: (context, index){
        return DonutTile(
          donutFlavor: donutsOnSale[index][0],
          donutPrice: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imageName: donutsOnSale[index][3]
        );

      },
     //cuantos elementos
      itemCount: donutsOnSale.length,

      );
  }
}