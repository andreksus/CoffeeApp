import 'package:coffee_app/src/features/menu/data/categories.dart';
import 'package:coffee_app/src/features/menu/view/categories.dart';
import 'package:coffee_app/src/features/menu/view/category-title.dart';
import 'package:coffee_app/src/features/menu/view/coffee-card.dart';
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
        SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            sliver: SliverToBoxAdapter(child: CategoryTitle(title: categories[0]))),
        SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            sliver: SliverGrid.count(
              childAspectRatio: 0.75,
              crossAxisSpacing: 16,
              crossAxisCount: 2,
              children: const [
                CoffeeCard(),
                CoffeeCard(),
              ],
            )),  
            SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            sliver: SliverToBoxAdapter(child: CategoryTitle(title: categories[1]))),
        SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            sliver: SliverGrid.count(
              childAspectRatio: 0.75,
              crossAxisSpacing: 16,
              crossAxisCount: 2,
              children: const [
                CoffeeCard(),
                CoffeeCard(),
              ],
            )),
            SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            sliver: SliverToBoxAdapter(child: CategoryTitle(title: categories[2]))),
        SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            sliver: SliverGrid.count(
              childAspectRatio: 0.75,
              crossAxisSpacing: 16,
              crossAxisCount: 2,
              children: const [
                CoffeeCard(),
                CoffeeCard(),
              ],
            )),
            SliverPadding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
            sliver: SliverToBoxAdapter(child: CategoryTitle(title: categories[3]))),
        SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            sliver: SliverGrid.count(
              childAspectRatio: 0.75,
              crossAxisSpacing: 16,
              crossAxisCount: 2,
              children: const [
                CoffeeCard(),
                CoffeeCard(),
              ],
            )),          
      ]),
    );
  }
}
