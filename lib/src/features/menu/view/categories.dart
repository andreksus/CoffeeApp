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
  late int _activeIndex;

  void _setActiveIndex(int index) {
    setState(() {
      _activeIndex = index;
    });
  }

  Widget buildCategory(int index, String title) {
    return GestureDetector(
        onTap: () {
          _setActiveIndex(index);
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
  void initState() {
    super.initState();
    _activeIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
            children: widget.categories
                .map((title) =>
                    buildCategory(widget.categories.indexOf(title), title))
                .toList()));
  }
}

// Category getCategoryByIndexOfActive(int indexOfActive, int currentIndex) {
//   if (indexOfActive == currentIndex) {
//     debugPrint("Index активный");
//     debugPrint(
//         "Состояние элемента: $currentIndex - ${Category(category: categories[currentIndex], isActive: true).getActive()}");
//     return Category(category: categories[currentIndex], isActive: true);
//   } else {
//     debugPrint("Index неактивный: $currentIndex. Активный - $indexOfActive");
//     debugPrint(
//         "Состояние элемента: $currentIndex - ${Category(category: categories[currentIndex], isActive: false).getActive()}");
//     return Category(category: categories[currentIndex], isActive: false);
//   }
// }
