import 'package:flutter/material.dart';
import '../utils/donut_tile.dart';

class PancakeTab extends StatelessWidget {
  // Lista de smoothies
  final List smoothiesOnSale = [
    // [smoothieFlavor, smoothiePrice, smoothieColor, imageName]
    ["Pancake con Mantequilla", "30", Colors.blue, "lib/images/pancake1.png"],
    ["Pancake con Fresas", "40", Colors.red, "lib/images/pancake2.png"],
    ["Pancake con Frutos", "50", Colors.purple, "lib/images/pancake3.png"],
    ["Pancake Simple", "45", Colors.brown, "lib/images/pancake4.png"],

    ["Pancake ", "50", Colors.blue, "lib/images/pancake5.png"],
    ["Pancake ", "60", Colors.red, "lib/images/pancake6.png"],
    ["Pancake ", "70", Colors.purple, "lib/images/pancake7.png"],
    ["Pancake ", "80", Colors.brown, "lib/images/pancake8.png"]
  ];

  PancakeTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: smoothiesOnSale[index][0],
          donutPrice: smoothiesOnSale[index][1],
          donutColor: smoothiesOnSale[index][2],
          imageName: smoothiesOnSale[index][3],
        );
      },
      // Cuántos elementos
      itemCount: smoothiesOnSale.length,
    );
  }
}
