import 'package:flutter/material.dart';

class DonutTile extends StatelessWidget {
  final String donutFlavor;
  final String donutPrice;
  final dynamic donutColor;
  final String imageName;

  //Valor fijo del border circular
  final double borderRadius = 24;

  const DonutTile({super.key, required this.donutFlavor, required this.donutPrice, this.donutColor, required this.imageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(

          color: donutColor[50],
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Column(children: [
          //precio
          Row(
            //alinea el texto a la derecha
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
            Container(
              decoration: BoxDecoration(
                color: donutColor[100],
                borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(borderRadius),
            topRight: Radius.circular(borderRadius)
          ),
              ),
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 18),
              child: Text('\$$donutPrice',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
                color: donutColor[800],
              ),),
            )
          ],),

           //Imagen del producto
            Padding(padding: const EdgeInsets.symmetric(
              horizontal: 36, vertical: 16
            ),
            child: Image.asset(imageName)
            ),
          //Texto del sabor del producto
          Text(
          donutFlavor,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16
            ),
          ),
          const SizedBox (height: 4),
          Text('Dukins', style: TextStyle(color: Colors.grey[600]),
          ),


          //Íconos de "Me encanta" y "Agregar"

          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //love icon
                Icon(
                  Icons.favorite,
                color: Colors.pink[400],
                ),

                Icon(
            Icons.add,
            color: Colors.grey[800],
          ),

              ],
            ),
          ),

        ],
        ),
      ),
    );
  }
}