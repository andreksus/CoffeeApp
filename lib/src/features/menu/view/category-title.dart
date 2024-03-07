import 'package:flutter/material.dart';

class CategoryTitle extends StatelessWidget {
  const CategoryTitle({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        child: Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 32,
      ),
    ));
  }
}
