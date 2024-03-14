import 'package:coffee_app/src/features/menu/data/categories.dart';
import 'package:coffee_app/src/features/menu/data/keys.dart';
import 'package:coffee_app/src/features/menu/view/category.dart';
import 'package:flutter/material.dart';

class Categories extends StatefulWidget {
  const Categories({super.key, required this.categories});
  final List<String> categories;

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  late int indexOfActiveElement;
  late List<Widget> categoriesCards;

  late List<GlobalKey> keys;

  @override
  void initState() {
    super.initState();
    indexOfActiveElement = 0;
  }

  void update(int index) {
    setState(() {
      indexOfActiveElement = index;
      debugPrint("change index on: $indexOfActiveElement");
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: [
          GestureDetector(
            onTap: () {
              update(0);
            },
            child: getCategoryByIndexOfActive(indexOfActiveElement, 0),
          ),
          GestureDetector(
            onTap: () {
              update(1);
            },
            child: getCategoryByIndexOfActive(indexOfActiveElement, 1),
          ),
          GestureDetector(
            onTap: () {
              update(2);
            },
            child: getCategoryByIndexOfActive(indexOfActiveElement, 2),
          ),
          GestureDetector(
            onTap: () {
              update(3);
            },
            child: getCategoryByIndexOfActive(indexOfActiveElement, 3),
          )
        ]));
  }
}

Category getCategoryByIndexOfActive(int indexOfActive, int currentIndex) {
  if (indexOfActive == currentIndex) {
    debugPrint("Index активный");
    return Category(category: categories[currentIndex], isActive: true);
  } else {
    debugPrint("Index неактивный: $currentIndex. Активный - $indexOfActive");
    return Category(category: categories[currentIndex], isActive: false);
  }
}
// child: SingleChildScrollView(
        //     scrollDirection: Axis.horizontal,
        //     child: Row(children: [
        //       GestureDetector(
        //         onTap: () {
        //           debugPrint("123");
        //           setState(() {
        //             if (categoriesWidgets[0].getActiveState()){
        //               debugPrint("123123");
        //               categoriesWidgets[0].setActiveState(false);
        //               debugPrint("${categoriesWidgets[0].getActiveState()}");
        //             } else {
        //               setIndexOfActiveElement(0);
        //               categoriesWidgets[0].setActiveState(true);
        //             }
        //           });
        //         },
        //         child: categoriesWidgets[0],
        //       ),
        //       GestureDetector(
        //         onTap: () {
        //           setState(() {
        //             if (categoriesWidgets[1].getActiveState()){
        //               categoriesWidgets[1].setActiveState(false);
        //             } else {
        //               setIndexOfActiveElement(1);
        //               categoriesWidgets[1].setActiveState(true);
        //             }
        //           });
        //         },
        //         child: categoriesWidgets[1],
        //       ),
        //       GestureDetector(
        //         onTap: () {
        //           setState(() {
        //             if (categoriesWidgets[2].getActiveState()){
        //               categoriesWidgets[2].setActiveState(false);
        //             } else {
        //               setIndexOfActiveElement(2);
        //               categoriesWidgets[2].setActiveState(true);
        //             }
        //           });
        //         },
        //         child: categoriesWidgets[02],
        //       ),
        //       GestureDetector(
        //         onTap: () {
        //           setState(() {
        //             if (categoriesWidgets[3].getActiveState()){
        //               categoriesWidgets[3].setActiveState(false);
        //             } else {
        //               setIndexOfActiveElement(3);
        //               categoriesWidgets[3].setActiveState(true);
        //             }
        //           });
        //         },
        //         child: categoriesWidgets[3],
        //       ),
        //       // categoriesWidgets[1],
        //       // categoriesWidgets[2],
        //       // categoriesWidgets[3],
        //     ]))



    //   SizedBox(
    //   height: 35.0,
    //   child: ListView.builder(
    //     scrollDirection: Axis.horizontal,
    //     itemCount: widget.categories.length,
    //     itemBuilder: (context, index) {
    //       if (index == indexOfActiveElement) {
    //         //debugPrint("1");
    //         return Category(
    //           category: widget.categories[index],
    //           isActive: true,
    //         );
    //       }
    //       return GestureDetector(
    //           onTap: () {
    //             setState(() {
    //               debugPrint("state");
    //               indexOfActiveElement =
    //                   categories.indexOf(widget.categories[index]);
    //             });
    //           },
    //           child: Category(
    //             category: widget.categories[index],
    //             isActive: false,
    //           ));
    //     },
    //   ),
    // );