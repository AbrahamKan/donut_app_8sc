import 'package:donut_app_8sc/tabs/burger_tab.dart';
import 'package:donut_app_8sc/tabs/donut_tab.dart';
import 'package:donut_app_8sc/tabs/pizza_tab.dart';
import 'package:donut_app_8sc/tabs/pancake_tab.dart';
import 'package:donut_app_8sc/tabs/smoothie_tab.dart';
import 'package:donut_app_8sc/utils/my_tab.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {

  List<Widget> myTabs = [
    //donut tab
    MyTab(iconPath: 'lib/icons/donut.png', tabName: 'Donuts'),
    //burger tab
    MyTab(iconPath: 'lib/icons/burger.png', tabName: 'Burger'),
    //smoothie tab
    MyTab(iconPath: 'lib/icons/smoothie.png', tabName: 'Smoothie'),
    //pancake tab
    MyTab(iconPath: 'lib/icons/pancakes.png', tabName: 'Pancakes'),
    //pizza tab
    MyTab(iconPath: 'lib/icons/pizza.png', tabName: 'Pizza')
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,

      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu, color: Colors.grey[800]),
        actions: [Padding(
          //Le da un padding a la derecha
          padding: const EdgeInsets.only(right: 12.0),
          child: IconButton(onPressed: (){}, icon: Icon(Icons.person)),
        )],),
        body: Column(
          //Texto i want to Eat
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 24),
              child: Row(
                children: [
                  Text("I want to ", style: TextStyle(fontSize: 32),),
                  Text("Eat", style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    decoration: TextDecoration.underline,
                  ),)
                ],
              ),
            ),
            //Tap bar
            TabBar(tabs: myTabs),
            //color texto seleccionado

            //Tap bar view
            Expanded(child:
            TabBarView(
              children:[
              DonutTab(),
              BurgerTab(),
              SmoothieTab(),
              PancakeTab(),
              PizzaTab()
              ]
              )),
            //Carrito
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 28),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("2 Items | \$45",
                      style: TextStyle(
                        fontSize: 16,
                      ),
                      ),

                    ],
                    ),),
                    ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.pink,
                      ),
                      child: const Text("View Cart",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}