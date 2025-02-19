import 'package:flutter/material.dart';
import '../utils/donut_tile.dart';

class SmoothieTab extends StatelessWidget {
  // Lista de smoothies
  final List smoothiesOnSale = [
    // [smoothieFlavor, smoothiePrice, smoothieColor, imageName]
    ["Smoothie Verde", "30", Colors.blue, "lib/images/smoothie1.png"],
    ["Smoothie de Fresa", "40", Colors.red, "lib/images/smoothie2.png"],
    ["Smoothie rosa", "50", Colors.purple, "lib/images/smoothie3.png"],
    ["Smoothie de frutas", "45", Colors.brown, "lib/images/smoothie4.png"],

    ["Smoothie ", "50", Colors.blue, "lib/images/smoothie5.png"],
    ["Smoothie ", "60", Colors.red, "lib/images/smoothie6.png"],
    ["Smoothie ", "70", Colors.purple, "lib/images/smoothie7.png"],
    ["Smoothie ", "80", Colors.brown, "lib/images/smoothie8.png"]
  ];

  SmoothieTab({super.key});

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
