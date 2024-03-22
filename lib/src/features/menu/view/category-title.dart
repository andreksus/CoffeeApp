import 'package:flutter/material.dart';

class CategoryTitleSliver extends StatelessWidget {
  const CategoryTitleSliver({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      sliver: SliverToBoxAdapter(
        child: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 32,
          ),
        ),
      ),
    );
  }
}
