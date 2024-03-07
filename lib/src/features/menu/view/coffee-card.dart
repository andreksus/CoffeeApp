import 'package:flutter/material.dart';

class CoffeeCard extends StatelessWidget {
  const CoffeeCard({super.key});
  
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
            const Padding(
                padding: EdgeInsets.only(bottom: 8),
                child: Text("Олеато",
                    style:
                        TextStyle(fontSize: 16, fontWeight: FontWeight.w500))),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 35),
              decoration: BoxDecoration(
                color: const Color(0xff85C3DE),
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: const Text("139 руб",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white
                  )),
            )
          ],
        ));
  }
}
