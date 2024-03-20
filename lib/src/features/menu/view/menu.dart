import 'package:coffee_app/src/features/menu/data/categories.dart';
import 'package:coffee_app/src/features/menu/data/coffee.dart';
import 'package:coffee_app/src/features/menu/data/keys.dart';
import 'package:coffee_app/src/features/menu/view/categories.dart';
import 'package:coffee_app/src/features/menu/view/category-title.dart';
import 'package:coffee_app/src/features/menu/view/coffee-cards-grid.dart';
import 'package:flutter/material.dart';
import 'package:visibility_detector/visibility_detector.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  late int _activeIndex;

  @override
  void initState() {
    super.initState();
    _activeIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7FAF8),
      appBar: AppBar(
        backgroundColor: const Color(0xffF7FAF8),
        title: Categories(
            categories: categories,
            indexOfActiveElement: _activeIndex,
            changeIndex: _changeIndex),
      ),
      body: CustomScrollView(slivers: [
        SliverVisibilityDetector(
            key: titleCategoriesKeys[0],
            sliver: CategoryTitleSliver(title: categories[0]),
            onVisibilityChanged: (VisibilityInfo info) {
              debugPrint("${info.visibleFraction} + ${titleCategoriesKeys[0]}");
              getInfoVision(info.visibleFraction);
              if (info.visibleFraction == 0) {
                _changeIndexWithoutScroll(1);
              } else if (info.visibleFraction == 1) {
                _changeIndexWithoutScroll(0);
              }
              //if 0.0, то меняем индекс категорий
            }),
        const CoffeeCardsGridSliver(list: blackCoffee),
        SliverVisibilityDetector(
            key: titleCategoriesKeys[1],
            sliver: CategoryTitleSliver(title: categories[1]),
            onVisibilityChanged: (VisibilityInfo info) {
              debugPrint("${info.visibleFraction} + ${titleCategoriesKeys[0]}");
              if (info.visibleFraction == 0) {
                _changeIndexWithoutScroll(2);
              } else if (info.visibleFraction == 1 && _activeIndex == 2) {
                _changeIndexWithoutScroll(1);
              }
            }),
        const CoffeeCardsGridSliver(list: coffeeMilk),
        SliverVisibilityDetector(
            key: titleCategoriesKeys[2],
            sliver: CategoryTitleSliver(title: categories[2]),
            onVisibilityChanged: (VisibilityInfo info) {
              if (info.visibleFraction == 0) {
                _changeIndexWithoutScroll(3);
              } else if (info.visibleFraction == 1 && _activeIndex == 3) {
                _changeIndexWithoutScroll(2);
              }
            }),
        const CoffeeCardsGridSliver(list: authorsCoffee),
        SliverVisibilityDetector(
            key: titleCategoriesKeys[3],
            sliver: CategoryTitleSliver(title: categories[3]),
            onVisibilityChanged: (VisibilityInfo info) {}),
        const CoffeeCardsGridSliver(list: tea),
      ]),
    );
  }

  void _changeIndex(int index) {
    setState(() {
      _activeIndex = index;
      Scrollable.ensureVisible(
          titleCategoriesKeys[_activeIndex].currentContext ?? context);
    });
  }

  void _changeIndexWithoutScroll(int index) {
    setState(() {
      _activeIndex = index;
    });
  }
}

void getInfoVision(double info) {
  if (info == 0) {
    debugPrint("info");
  } else {
    // setActiveCategory()
  }
}
