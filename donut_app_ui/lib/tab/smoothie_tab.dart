import 'package:donut_app_ui/utils/donut_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class smoothieTab extends StatelessWidget {
  List donutsOnSale = [
    ["Lemonade", "4.99", Colors.deepOrange, "lib/images/drinks/drink.png"],
    ["Energy Drink", "10", Colors.blue, "lib/images/drinks/energy-drink.png"],
    ["Alcohol", "34.99", Colors.red, "lib/images/drinks/liquor.png"],
    ["Soda", "3.99", Colors.pink, "lib/images/drinks/soft-drink.png"],
    ["Water", "1.99", Colors.blue, "lib/images/drinks/water-bottle.png"],
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(12.0),
      itemCount: donutsOnSale.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, childAspectRatio: 1 / 1.6),
      itemBuilder: (context, index) {
        return productTile(
          flavour: donutsOnSale[index][0],
          prices: donutsOnSale[index][1],
          donutColor: donutsOnSale[index][2],
          imagename: donutsOnSale[index][3],
        );
      },
    );
  }
}
