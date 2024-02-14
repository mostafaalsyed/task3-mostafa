import 'package:flutter/material.dart';
import 'package:flutter_application_2/nav_bar_pages/item_card.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<String> productNames = ["Product 1 ", "Mobile", "Laptop", "Tv"];
  @override
  Widget build(BuildContext context) {
    return ListView.separated (
        itemCount: productNames.length,
        itemBuilder: (BuildContext context, int index) {
          return ItemCard(productName: productNames[index]);
        },
        separatorBuilder: (context, index) {
          return Divider();
        }
        );
  }
}
