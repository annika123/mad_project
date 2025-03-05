import 'package:flutter/material.dart';

void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "Food",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: "App",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            backgroundColor: Colors.orange,
            centerTitle: true,
            bottom: const TabBar(
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black54,
              indicatorColor: Colors.red,
              indicatorWeight: 4.0,
              tabs: [
                Tab(text: "Pizza"),
                Tab(text: "Burger"),
                Tab(text: "Ice Cream"),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Image.asset("assets/pizza.png.jpg"), // Pizza image
              Image.asset("assets/burger.png.jpg"), // Burger image
              Image.asset("assets/icecream.png.jpg"), // Ice Cream image
            ],
          ),
        ),
      ),
    );
  }
}
