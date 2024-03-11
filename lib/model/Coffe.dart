// model/movie.dart
class Coffe {
  final String title;
  final String runtime;
  final String imageUrl; 
  int quantity;// URL for the movie image

  Coffe({
    required this.title,
    required this.runtime,
    required this.imageUrl,
    this.quantity = 0

    
  }
  );
}







// models/movie.dart
// class Movie {
//   final String title;
//   final String? runtime; // how long this movie is (in minute)

//   Movie({required this.title, this.runtime});
// }
// models/movie.dart
// class Movie {
//   final String title;
//   final String? runtime;
//   int quantity; // Quantity of the movie added to the cart

//   Movie({required this.title, this.runtime, this.quantity = 0});

//   // String get imageUrl => null;
// }
