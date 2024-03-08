import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  Category({super.key, required this.category, required this.isActive});
  final String category;
  bool isActive;
  final dataKey = GlobalKey();

  Key getKey(){
    return dataKey;
  }

  void setActiveState(bool state) {
    isActive = state;
  }

  bool getActiveState() {
    return isActive;
  }

  @override
  State<Category> createState() => _Category();
}

class _Category extends State<Category> {
  @override
  Widget build(BuildContext context) {
    if (widget.getActiveState()) {
      debugPrint("vhod");
      debugPrint("${widget.getActiveState()}");
      return Container(
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.only(right: 8.0),
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
    } else {
      debugPrint("aaa3");
      debugPrint("${widget.getActiveState()}");
      return Container(
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.only(right: 8.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Text(widget.category,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
            )),
      );
    }
  }
}

class Category2 extends StatelessWidget {
  Category2({super.key, required this.category, required this.isActive});
  final String category;
  bool isActive;

  void setActiveState(bool state) {
    isActive = state;
  }

  bool getActiveState() {
    return isActive;
  }

  @override
  Widget build(BuildContext context) {
    if (getActiveState()) {
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
    } else {
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
  }
}
