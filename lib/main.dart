import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:menu_app/models/menu.dart';
import 'package:menu_app/pages/my_home.dart';
import 'package:menu_app/pages/recipe_detail.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false, //to remove the debug banner
      title: 'Flutter Demo',

      routerConfig:
          _router, //we're taking the var _router and this var define our path (like urls in python)

      //here we are routing our page based on our router
    );
  }
}

// define the router confg
final _router = GoRouter(
  initialLocation:
      "/home", //we're defining the defult page otherwise the defult should be "/"
  routes: [
    GoRoute(
      path: "/home",
      builder: (context, state) => MyHome(),
    ),
    GoRoute(
        path: "/recipe/:ide",
        builder: (context, state) {
          final index = int.parse(state.params["ide"]!); // the ! here becouse
          return MYrecipePage(menu: Menu.menuItem[index]);
        })
  ],
);
