// model/coffe.dart
class Coffe {
  final String title;
  final String runtime;
  final String imageUrl; 
  int quantity;// URL for the coffe image

  Coffe({
    required this.title,
    required this.runtime,
    required this.imageUrl,
    this.quantity = 0

    
  }
  );
}







