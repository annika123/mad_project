import 'package:flutter/material.dart';

void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text("Food App"),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.local_pizza), text: "Pizza"),
                Tab(icon: Icon(Icons.fastfood), text: "Burger"),
                Tab(icon: Icon(Icons.icecream), text: "Ice Cream"),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              Icon(Icons.local_pizza, size: 100, color: Colors.red),
              Icon(Icons.fastfood, size: 100, color: Colors.orange),
              Icon(Icons.icecream, size: 100, color: Colors.blue),
            ],
          ),
        ),
      ),
    );
  }
}
