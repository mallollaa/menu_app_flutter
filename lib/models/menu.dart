//in the models we create our classes
// whenever we have multiples var that describe one things we need to create a class

class Menu {
  //declare our var
  String title;
  String imageURL;

  Menu({
    required this.title,
    required this.imageURL,
  });

//create the static var
  static var menuItem = [
//here we will use our class to create the list
    Menu(title: "Pasta", imageURL: "assest/images/pasta.jpg"),
    Menu(title: "Burger", imageURL: "assest/images/burger.jpg"),
    Menu(title: "Pizza", imageURL: "assest/images/pizza.jpg"),
    Menu(title: "Frize", imageURL: "assest/images/frise.jpg"),
    Menu(title: "Suchi", imageURL: "assest/images/sushi.jpg"),
    Menu(title: "Wark Enab", imageURL: "assest/images/wark-enab.jpg"),

    // Menu(
    //   title: "Suchi",
    //   imageURL:
    //       "assest/images/burger.jpg"
    // ),
  ];
}
