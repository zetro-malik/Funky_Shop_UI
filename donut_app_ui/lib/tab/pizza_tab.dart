import 'package:donut_app_ui/utils/donut_tile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PizzaTab extends StatelessWidget {
  List donutsOnSale = [
    ["Extra Cheese", "12.99", Colors.deepOrange, "lib/images/pizza.png"],
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
