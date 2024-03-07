import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({super.key, required this.category});
  final String category;

  @override
  State<Category> createState() => _Category();
}

class _Category extends State<Category> {
  late Color _textColor;
  late Color _backColor;

  @override
  void initState() {
    //Начальное значение цвета кнопки
    _textColor = Colors.black;
    _backColor = Colors.white;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (_textColor == Colors.black) {
            _textColor = Colors.white;
            _backColor = const Color(0xff85C3DE);
          } else {
            _textColor = Colors.black;
            _backColor = Colors.white;
          }
        });
      },
      child: Container(
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          color: _backColor,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Text(widget.category,
            style: TextStyle(
              color: _textColor,
              fontSize: 14,
            )),
      ),
    );
  }
}
