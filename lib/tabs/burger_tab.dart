import 'package:flutter/material.dart';
import '../utils/donut_tile.dart';

class BurgerTab extends StatelessWidget {
  // Lista de hamburguesas
  final List burgersOnSale = [
    // [burgerFlavor, burgerPrice, burgerColor, imageName]
    ["Burger Simple", "50", Colors.blue, "lib/images/burger1.png"],
    ["Burger jumbo", "60", Colors.red, "lib/images/burger2.png"],
    ["Burger con cebolla", "70", Colors.purple, "lib/images/burger3.png"],
    ["Burger feliz", "80", Colors.brown, "lib/images/burger4.png"],

    ["Burger ", "50", Colors.blue, "lib/images/burger5.png"],
    ["Burger ", "60", Colors.red, "lib/images/burger6.png"],
    ["Burger ", "70", Colors.purple, "lib/images/burger7.png"],
    ["Burger ", "80", Colors.brown, "lib/images/burger8.png"]
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
