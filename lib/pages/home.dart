import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> items = [
    {'name': 'Pizza', 'price': '15kr', 'icon': Icons.fastfood},
    {'name': 'Sandwich', 'price': '15kr', 'icon': Icons.local_cafe},
    {'name': 'Pølsehorn', 'price': '10kr', 'icon': Icons.food_bank},
    {'name': 'Vand', 'price': '10kr', 'icon': Icons.local_drink},
    {'name': 'Wrap', 'price': '15kr', 'icon': Icons.local_cafe},
    {'name': 'Mælk', 'price': '10kr', 'icon': Icons.local_drink},
    {'name': 'Monster', 'price': '25kr', 'icon': Icons.local_cafe},
    {'name': 'Redbull', 'price': '25kr', 'icon': Icons.local_cafe},
    {'name': 'Kaffe', 'price': '10kr', 'icon': Icons.local_cafe},
    {'name': 'Vandmelon', 'price': '100kr', 'icon': Icons.local_cafe},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Items for sale'),
      ),
      body: Center(
        child: Container(
          width: MediaQuery
              .of(context)
              .size
              .width * 0.9,
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemCount: items.length,
            itemBuilder: (ctx, i) => _cafeteriaItem(items[i], context),
          ),
        ),
      ),
    );
  }

  Widget _cafeteriaItem(Map<String, dynamic> item, BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            item['icon'],
            size: 50,
          ),
          Text(
            item['name'],
            style: TextStyle(fontSize: 16.0, color: Colors.black), // Set the text color to black
          ),
          Text(
            item['price'],
            style: TextStyle(fontSize: 14.0, color: Colors.black), // Set the text color to black
          ),
        ],
      ),
    );
  }
}