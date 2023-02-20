import 'package:flutter/material.dart';
import 'package:menu_app/models/menu.dart';

class MYrecipePage extends StatelessWidget {
  MYrecipePage({required this.menu, super.key});
  Menu menu; //model
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(menu.title)),
      body: Center(
        child: Column(
          children: [
            Container(
                padding: EdgeInsets.all(12),
                margin: EdgeInsets.all(20),
                child: Text(menu.title)),
            Image.asset(menu.imageURL)
          ],
        ),
      ),
    );
  }
}
