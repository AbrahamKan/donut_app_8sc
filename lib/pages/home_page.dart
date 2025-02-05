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
    MyTab(iconPath: 'lib/icons/donut.png'),
    //burger tab
    MyTab(iconPath: 'lib/icons/burger.png'),
    //smoothie tab
    MyTab(iconPath: 'lib/icons/smoothie.png'),
    //pancake tab
    MyTab(iconPath: 'lib/icons/pancakes.png'),
    //pizza tab
    MyTab(iconPath: 'lib/icons/pizza.png')
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
            TabBar(tabs: myTabs)
            //Tap bar view
            //Carrito

          ],
        ),
      ),
    );
  }
}