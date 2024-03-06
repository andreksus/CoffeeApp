import 'package:coffee_app/src/features/menu/view/category.dart';
import 'package:flutter/material.dart';

class Categories extends StatelessWidget {
  const Categories({super.key, required this.categories});
  final List<String> categories;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Category(category: categories[index]);
        },
      ),
    );
  }
}

// categories.map((category) => 
//         Container(
//           color: Colors.black,
//           child: Text(category),
//         )
//       ).toList(),