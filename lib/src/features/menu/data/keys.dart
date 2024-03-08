import 'package:flutter/material.dart';

List<Key> titleCategoriesKeys = [
  const Key("titleBlackCoffee"),
  const Key("titleMilkCoffee"),
  const Key("titleAuthorsCoffee"),
  const Key("tea"),
];

List<GlobalKey> categoriesKeys = [
  GlobalKey(debugLabel: "blackCoffee"),
  GlobalKey(debugLabel: "milkCoffee"),
  GlobalKey(debugLabel: "authorsCoffee"),
  GlobalKey(debugLabel: "tea"),
];
