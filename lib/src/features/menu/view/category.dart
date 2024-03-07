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
    Widget isNotActiveWidget = Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Text(widget.category,
          style: const TextStyle(
            fontSize: 14,
          )),
    );

    Widget isActiveWidget = Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.only(right: 8),
      decoration: BoxDecoration(
        color: const Color(0xff85C3DE),
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Text(widget.category,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          )),
    );

    Widget actualWidget = isActiveWidget;

    return GestureDetector(
      child: actualWidget,
      onTap: () => setState(() {
        debugPrint('object');
        if (actualWidget == isNotActiveWidget) {
          actualWidget = isActiveWidget;
          debugPrint('1');
        } else {
          actualWidget = isNotActiveWidget;
          debugPrint('2');
        }
      }),
    );
  }
}
