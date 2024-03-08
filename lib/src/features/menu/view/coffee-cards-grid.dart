
import 'package:coffee_app/src/features/menu/view/coffee-card.dart';
import 'package:flutter/material.dart';

class CoffeeCardsGridSliver extends StatelessWidget {
  const CoffeeCardsGridSliver({super.key, required this.list});
  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                sliver: SliverGrid.extent(
                  childAspectRatio: 0.78,
                  maxCrossAxisExtent: 150,
                  mainAxisSpacing: 16, 
                  crossAxisSpacing: 16,
                  children: list.map((index) => CoffeeCard(title: index)).toList(),
                ),
              );
  }
}
