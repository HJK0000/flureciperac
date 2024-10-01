import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: ListView(
            children: [
              Text("Recipes",
                  style: TextStyle(color: Colors.black87, fontSize: 30)),
              Row(
                children: [
                  _mIcon(Icons.food_bank, "All"),
                  const SizedBox(width: 25),
                  _mIcon(Icons.emoji_food_beverage, "Coffee"),
                  const SizedBox(width: 25),
                  _mIcon(Icons.fastfood, "Burger"),
                  const SizedBox(width: 25),
                  _mIcon(Icons.local_pizza, "Pizza"),
                ],
              ),
            ],
        ),
        ));
  }


  Container _mIcon(mIcon, String text) {
    return Container(
      width: 60,
      height: 80,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.black12),
          borderRadius: BorderRadius.circular(30)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            mIcon,
            color: Colors.redAccent,
            size: 30,
          ),
          Text("$text",
              style: TextStyle(
                  color: Colors.black87, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
