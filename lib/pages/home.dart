import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
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
          child: ListView(

            children: [
              _cafeteriaItem('· Pizza - 15kr', context),
              _cafeteriaItem('· Sandwich - 15kr', context),
              _cafeteriaItem('· Pølsehorn - 10kr', context),
              _cafeteriaItem('· Vand - 10kr', context),
              _cafeteriaItem('· Wrap - 15kr', context),
              _cafeteriaItem('· Mælk - 10kr', context),
              _cafeteriaItem('· Monster - 25kr', context),
              _cafeteriaItem('· Redbull - 25kr', context),
              _cafeteriaItem('· Kaffe - 10kr', context),
              _cafeteriaItem('· Vandmelon - 100kr', context),

              // Add more items as needed
            ],
          ),
        ),
      ),
    );
  }

  Widget _cafeteriaItem(String itemName, BuildContext context) {
    return ListTile(
      title: Text(
        itemName,
        style: TextStyle(
          fontSize: 20.0, // Set the font size to 18
          // You can also adjust other text properties like fontWeight, color, etc. here
        ),
      ),
    );
  }
}

