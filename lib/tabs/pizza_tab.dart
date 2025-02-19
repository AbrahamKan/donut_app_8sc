import 'package:flutter/material.dart';
import '../utils/donut_tile.dart';

class PizzaTab extends StatelessWidget {
  // Lista de smoothies
  final List pizzasOnSale = [
    // [smoothieFlavor, smoothiePrice, smoothieColor, imageName]
    ["Pizza con Salami", "30", Colors.blue, "lib/images/pizza1.png"],
    ["Pizza Pimientos", "40", Colors.red, "lib/images/pizza2.png"],
    ["Pizza con Cebolla", "50", Colors.purple, "lib/images/pizza3.png"],
    ["Pizza con Queso", "45", Colors.brown, "lib/images/pizza4.png"],

    ["Pizza ", "50", Colors.blue, "lib/images/pizza5.png"],
    ["Pizza ", "60", Colors.red, "lib/images/pizza6.png"],
    ["Pizza ", "70", Colors.purple, "lib/images/pizza7.png"],
    ["Pizza ", "80", Colors.brown, "lib/images/pizza8.png"]
  ];

  PizzaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: pizzasOnSale[index][0],
          donutPrice: pizzasOnSale[index][1],
          donutColor: pizzasOnSale[index][2],
          imageName: pizzasOnSale[index][3],
        );
      },
      // Cuántos elementos
      itemCount: pizzasOnSale.length,
    );
  }
}
