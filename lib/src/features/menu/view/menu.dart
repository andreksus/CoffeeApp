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
        const SliverPadding(
            padding: EdgeInsets.all(16),
            sliver: SliverToBoxAdapter(child: CategoryTitle())),
        SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverGrid.count(
              crossAxisSpacing: 16,
              crossAxisCount: 2,
              children: const [
                CoffeeCard(),
                CoffeeCard(),
              ],
            ))
      ]),
    );
  }
}
