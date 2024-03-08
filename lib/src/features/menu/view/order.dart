import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    if (count == 0) {
      return GestureDetector(
        onTap: () {
          setState(() {
            count = increment(count);
            debugPrint("1");
          });
        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 35),
          decoration: BoxDecoration(
            color: const Color(0xff85C3DE),
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: const Text("139 руб",
              style: TextStyle(fontSize: 14, color: Colors.white)),
        ),
      );
    } else {
      return Container(
        decoration: const BoxDecoration(
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  count = decrement(count);
                  debugPrint("-");
                });
              },
              child: Container(
                margin: const EdgeInsets.only(right: 8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xff85C3DE)),
                padding:
                    const EdgeInsets.symmetric(horizontal: 7, vertical: 11),
                child: Image.asset('lib/src/assets/minus.png'),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(right: 8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: const Color(0xff85C3DE)),
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 4),
              child: Text("$count",
                  style: const TextStyle(fontSize: 12, color: Colors.white)),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  count = increment(count);
                  debugPrint("+");
                });
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: const Color(0xff85C3DE)),
                padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 7),
                child: Image.asset('lib/src/assets/plus.png'),
              ),
            )
          ],
        ),
      );
    }
  }
}

int increment(int value) {
  if (value == 10) {
    return value;
  }
  value++;
  return value;
}

int decrement(int value) {
  if (value == 0) {
    return value;
  }
  value--;
  return value;
}
