import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        child: Text(
      "Черный кофе",
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 32,
      ),
    ));
  }
}
