import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:go_router/go_router.dart';
import 'package:menu_app/models/menu.dart';
import 'package:menu_app/widgets/menu_card.dart';

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
        backgroundColor: Color.fromARGB(255, 55, 10, 25),
      ),
      body: SafeArea(
        child: Center(
          child: ListView.builder(
            itemCount: Menu.menuItem.length,
            itemBuilder: (context, index) => InkWell(
              onTap: () => context.push("/recipe/$index"),
              child: MenuCard(
                //first we pass the Widgets then the class of our models
                menu: Menu.menuItem[index],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
