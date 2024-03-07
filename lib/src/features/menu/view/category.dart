import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({super.key, required this.category});
  final String category;

  @override
  State<Category> createState() => _Category();
}

class _Category extends State<Category> {
  @override
  Widget build(BuildContext context) {
    bool isActive = false;

    if (isActive) {
      return GestureDetector(
        onTap: () => setState(() {
          isActive = !isActive;
        }),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: const Color(0xff85C3DE),
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Text(widget.category,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14,
              )),
        ),
      );
    } else {
      return GestureDetector(
        onTap: () => setState(() {
          isActive = true;
        }),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Text(widget.category,
              style: const TextStyle(
                fontSize: 14,
              )),
        ),
      );
    }
  }
}
