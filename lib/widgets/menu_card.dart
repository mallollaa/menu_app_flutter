import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:menu_app/models/menu.dart';

// we extract the Widget
class MenuCard extends StatefulWidget {
  //we make it stateful so the page can be dinamic
  Menu menu; // we are calling our models
  MenuCard({
    Key? key,
    required this.menu,

    //here we gonna pass our model requireds
  }) : super(key: key);

  @override
  State<MenuCard> createState() => _MenuCardState();
}

class _MenuCardState extends State<MenuCard> {
  bool isDetails = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(2),
      padding: EdgeInsets.all(2),
      child: Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    widget.menu.title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        isDetails = !isDetails;
                        context.push("/recipe");
                      },
                      child: Text("Detalis")),
                ],
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  widget.menu.imageURL,
                  width: 150,
                  height: 150,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
