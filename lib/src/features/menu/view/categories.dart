import 'package:coffee_app/src/features/menu/data/keys.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories(
      {super.key,
      required this.categories,
      required this.indexOfActiveElement,
      required this.changeIndex});
  final List<String> categories;
  final int indexOfActiveElement;
  final Function(int index) changeIndex;

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  late int _activeIndex = widget.indexOfActiveElement;

  void _setActiveIndex(int index) {
    setState(() {
      _activeIndex = index;
    });
  }

  @override
  void didUpdateWidget(covariant Categories oldWidget) {
    super.didUpdateWidget(oldWidget);
    _activeIndex = widget.indexOfActiveElement;
    Scrollable.ensureVisible(keys[_activeIndex].currentContext ?? context);
  }

  Widget buildCategory(int index, String title, GlobalKey key) {
    return GestureDetector(
        key: key,
        onTap: () {
          _setActiveIndex(index);
          Scrollable.ensureVisible(key.currentContext ?? context);
          widget.changeIndex(index);
        },
        child: _activeIndex == index
            ? Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.only(right: 8.0),
                decoration: BoxDecoration(
                  color: const Color(0xff85C3DE),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Text(title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    )),
              )
            : Container(
                padding: const EdgeInsets.all(8.0),
                margin: const EdgeInsets.only(right: 8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Text(title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    )),
              ));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: widget.categories
                .map((title) => buildCategory(widget.categories.indexOf(title),
                    title, keys[widget.categories.indexOf(title)]))
                .toList()));
  }
}
