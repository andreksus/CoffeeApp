import 'package:coffee_app/src/features/menu/view/order.dart';
import 'package:flutter/material.dart';

class CoffeeCard extends StatelessWidget {
  const CoffeeCard({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(16.0)),
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 8),
                child: Image.asset('lib/src/assets/coffee.png')),
            Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text(title,
                    style:
                        const TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
            const Order()
          ],
        ));
  }
}
