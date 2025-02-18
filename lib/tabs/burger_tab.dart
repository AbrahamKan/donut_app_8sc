import 'package:flutter/material.dart';
import '../utils/donut_tile.dart'; // Asegúrate de que este archivo contenga el widget DonutTile

class BurgerTab extends StatelessWidget {
  // Lista de hamburguesas
  final List burgersOnSale = [
    // [burgerFlavor, burgerPrice, burgerColor, imageName]
    ["ice Cream", "36", Colors.blue, "lib/images/icecream_donut.png"],
    ["Strawberry", "45", Colors.red, "lib/images/strawberry_donut.png"],
    ["Grape Ape", "84", Colors.purple, "lib/images/grape_donut.png"],
    ["Chocolate", "95", Colors.brown, "lib/images/chocolate_donut.png"]
  ];

  BurgerTab({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1 / 1.5,
      ),
      itemBuilder: (context, index) {
        return DonutTile(
          donutFlavor: burgersOnSale[index][0],
          donutPrice: burgersOnSale[index][1],
          donutColor: burgersOnSale[index][2],
          imageName: burgersOnSale[index][3],
        );
      },
      // Cuántos elementos
      itemCount: burgersOnSale.length,
    );
  }
}
