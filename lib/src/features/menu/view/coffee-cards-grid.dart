import 'package:coffee_app/src/features/menu/view/coffee-card.dart';
import 'package:flutter/material.dart';

class CoffeeCardsGridSliver extends StatelessWidget {
  const CoffeeCardsGridSliver({super.key, required this.list});
  final List<String> list;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(left: 16),
      sliver: SliverGrid(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
              crossAxisCount: 2),
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            return CoffeeCard(title: list[index]);
          }, childCount: list.length)),
    );
  }
}
