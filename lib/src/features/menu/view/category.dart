import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({super.key, required this.category, required this.isActive});
  final String category;
  final bool isActive;
  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  late bool isActive;

  void changeActive() {
    setState(() {
      isActive = !isActive;
      debugPrint("isActive: $isActive");
    });
  }

  @override
  void initState() {
    super.initState();
    if (widget.isActive) {
      isActive = true;
    } else {
      isActive = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => {
        
      },
    );
  }
}

Widget getActiveCategory(String category) {
  return Container(
    padding: const EdgeInsets.all(8.0),
    margin: const EdgeInsets.only(right: 8.0),
    decoration: BoxDecoration(
      color: const Color(0xff85C3DE),
      borderRadius: BorderRadius.circular(16.0),
    ),
    child: Text(category,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 14,
        )),
  );
}

Widget getNotActiveCategory(String category) {
  return Container(
    padding: const EdgeInsets.all(8.0),
    margin: const EdgeInsets.only(right: 8.0),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(16.0),
    ),
    child: Text(category,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 14,
        )),
  );
}
