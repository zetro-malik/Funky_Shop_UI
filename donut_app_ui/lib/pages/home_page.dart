import 'package:donut_app_ui/tab/burger_tab.dart';
import 'package:donut_app_ui/tab/donut_tab.dart';
import 'package:donut_app_ui/tab/pancake_tab.dart';
import 'package:donut_app_ui/tab/pizza_tab.dart';
import 'package:donut_app_ui/tab/smoothie_tab.dart';
import 'package:donut_app_ui/utils/my_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
//my tabs
  List<Widget> myTabs = const [
    //donut tab
    MyTab(iconPath: "lib/icons/donut.png"),
    //burger tab
    MyTab(iconPath: "lib/icons/burger.png"),

    //smoothie
    MyTab(iconPath: "lib/icons/smoothie.png"),

    //pancake tab
    MyTab(iconPath: "lib/icons/pancakes.png"),

    //pizza tab
    MyTab(iconPath: "lib/icons/pizza.png")
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,

          //leading button
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                size: 36,
                color: Colors.grey[800],
              ),
            ),
          ),

          //action button
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person,
                  color: Colors.grey[800],
                  size: 36,
                ),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            // I want to eat
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
              child: Row(
                children: const [
                  Text(
                    "I want to ",
                    style: TextStyle(fontSize: 24),
                  ),
                  Text(
                    "EAT",
                    style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10),

            //tab bar
            TabBar(tabs: myTabs),

            //tab bar view

            Expanded(
              child: TabBarView(children: [
                //donut page
                DonutTab(),
                //burger page
                BurgerTab(),
                //smoothie page
                smoothieTab(),
                //pancake page
                PancakeTab(),

                //pizza page
                PizzaTab()
              ]),
            )
          ],
        ),
      ),
    );
  }
}
