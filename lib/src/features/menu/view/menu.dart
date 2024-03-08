import 'package:coffee_app/src/features/menu/data/categories.dart';
import 'package:coffee_app/src/features/menu/data/coffee.dart';
import 'package:coffee_app/src/features/menu/data/keys.dart';
import 'package:coffee_app/src/features/menu/view/categories.dart';
import 'package:coffee_app/src/features/menu/view/category-title.dart';
import 'package:coffee_app/src/features/menu/view/coffee-card.dart';
import 'package:coffee_app/src/features/menu/view/coffee-cards-grid.dart';
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7FAF8),
      appBar: AppBar(
        backgroundColor: const Color(0xffF7FAF8),
        title: Categories(categories: categories),
      ),
      body: CustomScrollView(slivers: [
        SliverVisibilityDetector(key: titleCategoriesKeys[0], sliver: CategoryTitleSliver(title: categories[0]), onVisibilityChanged: (VisibilityInfo info){
          debugPrint("${info.visibleFraction} + ${titleCategoriesKeys[0]}");
        }),
        CoffeeCardsGridSliver(list: blackCoffee, key: categoriesKeys[0]),
        SliverVisibilityDetector(key: titleCategoriesKeys[1], sliver: CategoryTitleSliver(title: categories[1]), onVisibilityChanged: (VisibilityInfo info){
          debugPrint("${info.visibleFraction} + ${titleCategoriesKeys[1]}");
        }),        
        CoffeeCardsGridSliver(list: coffeeMilk, key: categoriesKeys[1]),
        SliverVisibilityDetector(key: titleCategoriesKeys[2], sliver: CategoryTitleSliver(title: categories[2]), onVisibilityChanged: (VisibilityInfo info){
          debugPrint("${info.visibleFraction} + ${titleCategoriesKeys[2]}");
        }),
        CoffeeCardsGridSliver(list: authorsCoffee, key: categoriesKeys[2]),
        SliverVisibilityDetector(key: titleCategoriesKeys[3], sliver: CategoryTitleSliver(title: categories[3]), onVisibilityChanged: (VisibilityInfo info){
          debugPrint("${info.visibleFraction} + ${titleCategoriesKeys[3]}");
        }),        
        CoffeeCardsGridSliver(list: tea, key: categoriesKeys[3]),
      ]),
    );
  }
}
