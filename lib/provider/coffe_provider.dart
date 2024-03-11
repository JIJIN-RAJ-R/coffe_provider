// provider/movie_provider.dart
import 'package:flutter/material.dart';
import 'package:test_provider/model/Coffe.dart';
import 'dart:math';

// A list of coffes with titles, runtimes, and image URLs
final List<Coffe> initialData = [
  Coffe(
    title: "Coffee 1",
    runtime: "${Random().nextInt(8) + 60} minutes ago",
    imageUrl: 'https://img.freepik.com/premium-photo/latte-art-cappuccino-black-background-with-coffee-cup-saucer-spoon_958272-833.jpg',
  ),
  Coffe(
    title: "Coffee 2",
    runtime: "${Random().nextInt(8) + 60} minutes ago",
    imageUrl: 'https://i0.wp.com/pediaa.com/wp-content/uploads/2016/05/Difference-Between-Latte-and-Cappuccino-image-2.jpg?resize=515%2C367',
  ),
  Coffe(
    title: "Coffee 3",
    runtime: "${Random().nextInt(8) + 60} minutes ago",
    imageUrl: 'https://e0.pxfuel.com/wallpapers/632/446/desktop-wallpaper-latte-art-background-thumbnail.jpg',
  ),
  Coffe(
    title: "Coffee 4",
    runtime: "${Random().nextInt(8) + 60} minutes ago",
    imageUrl:       'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlO-TNnwM5Gts-mg7rdOEUmiOoOndkKN9BMA&usqp=CAU',

  ),
  Coffe(
    title: "Coffee 5",
    runtime: "${Random().nextInt(8) + 60} minutes ago",
    imageUrl: 'https://img.freepik.com/premium-photo/cappuccino-coffee-cup-wood-table_51764-619.jpg',
  ),
  Coffe(
    title: "Coffee 6",
    runtime: "${Random().nextInt(8) + 60} minutes ago",
    imageUrl: 'https://static.vecteezy.com/system/resources/previews/002/455/993/large_2x/cappuccino-on-black-background-free-photo.JPG',
  ),
  Coffe(
    title: "Coffee 7",
    runtime: "${Random().nextInt(8) + 60} minutes ago",
    imageUrl: 'https://e0.pxfuel.com/wallpapers/632/446/desktop-wallpaper-latte-art-background-thumbnail.jpg',
  ),
  Coffe(
    title: "Coffee 8",
    runtime: "${Random().nextInt(8) + 60} minutes ago",
    imageUrl: 'https://e0.pxfuel.com/wallpapers/632/446/desktop-wallpaper-latte-art-background-thumbnail.jpg',
  ),
];

class MovieProvider with ChangeNotifier {
  // All coffes (that will be displayed on the Home screen)
  final List<Coffe> _coffes = initialData;
  
  // Retrieve all coffes
  List<Coffe> get coffes => _coffes;

  // Favorite Coffes (that will be shown on the MyList screen)
  final List<Coffe> _myList = [];

  // Cart items (that will be shown on the Cart screen)
  final List<Coffe> _myCartList = [];

  // Retrieve favorite coffes
  List<Coffe> get myList => _myList;

  // Retrieve cart items
  List<Coffe> get myCartList => _myCartList;

  // Adding a coffe to the favorites list
  void addToList(Coffe coffe) {
    _myList.add(coffe);
    notifyListeners();
  }

  // Removing a coffe from the favorites list
  void removeFromList(Coffe coffe) {
    _myList.remove(coffe);
    notifyListeners();
  }

  // Adding a coffe to the cart
  void addToCart(Coffe coffe) {
    _myCartList.add(coffe);
    notifyListeners();
  }

  // Removing a Coffe from the cart
  void removeFromCart(Coffe coffe) {
    _myCartList.remove(coffe);
    notifyListeners();
  }
}