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
              crossAxisCount: 2),
          delegate:
              SliverChildBuilderDelegate((BuildContext context, int index) {
            debugPrint(list[index]);
            return CoffeeCard(title: list[index]);
          }, childCount: list.length)),

      // sliver: SliverGrid.extent(
      //   childAspectRatio: 0.78,
      //   maxCrossAxisExtent: 150,
      //   mainAxisSpacing: 16,
      //   crossAxisSpacing: 16,
      //   children: list.map((index) => CoffeeCard(title: index)).toList(),
      // ),
    );
  }
}
