import 'package:coffee_app/src/features/menu/data/categories.dart';
import 'package:coffee_app/src/features/menu/data/coffee.dart';
import 'package:coffee_app/src/features/menu/view/categories.dart';
import 'package:coffee_app/src/features/menu/view/category-title.dart';
import 'package:coffee_app/src/features/menu/view/coffee-card.dart';
import 'package:coffee_app/src/features/menu/view/coffee-cards-grid.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7FAF8),
      appBar: AppBar(
        backgroundColor: const Color(0xffF7FAF8),
        title: const Categories(categories: categories),
      ),
      body: CustomScrollView(slivers: [ 
        CategoryTitleSliver(title: categories[0]),
        const CoffeeCardsGridSliver(list: blackCoffee),
        CategoryTitleSliver(title: categories[1]),
        const CoffeeCardsGridSliver(list: coffeeMilk),
        CategoryTitleSliver(title: categories[2]),
        const CoffeeCardsGridSliver(list: authorsCoffee),
        CategoryTitleSliver(title: categories[3]),
        const CoffeeCardsGridSliver(list: tea),
      ]),
    );
  }
}
