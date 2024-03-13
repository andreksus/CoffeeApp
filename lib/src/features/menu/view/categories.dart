import 'package:coffee_app/src/features/menu/data/categories.dart';
import 'package:coffee_app/src/features/menu/data/keys.dart';
import 'package:coffee_app/src/features/menu/view/category.dart';
import 'package:flutter/material.dart';

class Categories2 extends StatelessWidget {
  const Categories2({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        Category(
            category: categories[0], isActive: true, key: categoriesKeys[0]),
        Category(
            category: categories[1], isActive: false, key: categoriesKeys[1]),
        Category(
            category: categories[2], isActive: false, key: categoriesKeys[2]),
        Category(
            category: categories[3], isActive: false, key: categoriesKeys[3]),
      ]),
    );
  }
}

class Categories extends StatefulWidget {
  const Categories({super.key, required this.categories});
  final List<String> categories;

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  late int indexOfActiveElement;
  late List<Widget> categoriesCards;
  late List<GlobalKey> keys = [
    GlobalKey(debugLabel: "$categories[0]"),
    GlobalKey(debugLabel: "$categories[1]"),
    GlobalKey(debugLabel: "$categories[2]"),
    GlobalKey(debugLabel: "$categories[3]"),
  ];

  final dataKey = GlobalKey(debugLabel: "$categories[0]");
  @override
  void initState() {
    super.initState();
    indexOfActiveElement = 0;
    keys = [
      GlobalKey(debugLabel: "$categories[0]"),
      GlobalKey(debugLabel: "$categories[1]"),
      GlobalKey(debugLabel: "$categories[2]"),
      GlobalKey(debugLabel: "$categories[3]"),
    ];
    categoriesCards = [
      GestureDetector(
          onTap: () => {
                Scrollable.ensureVisible(keys[0].currentContext ?? context),
                indexOfActiveElement = 0
              },
          child:
              Category(category: categories[0], isActive: true, key: keys[0])),
      GestureDetector(
        onTap: () => {
          Scrollable.ensureVisible(keys[1].currentContext ?? context),
          indexOfActiveElement = 1
        },
        child: Category(category: categories[1], isActive: false, key: keys[1]),
      ),
      GestureDetector(
        onTap: () => {
          Scrollable.ensureVisible(keys[2].currentContext ?? context),
          indexOfActiveElement = 2
        },
        child: Category(category: categories[2], isActive: false, key: keys[2]),
      ),
      GestureDetector(
        onTap: () => {
          Scrollable.ensureVisible(keys[3].currentContext ?? context),
          indexOfActiveElement = 3
        },
        child: Category(category: categories[3], isActive: false, key: keys[3]),
      )
    ];
  }

  int setIndexOfActiveElement(int index) {
    return index;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(children: categoriesCards));
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