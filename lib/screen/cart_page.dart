// screens/cart_page.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_provider/provider/coffe_provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myList = context.watch<CoffeProvider>().myList;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 26, 25, 25),
        title: const Text(
          'CartList',
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 26, 25, 25),
      body: ListView.builder(
        itemCount: myList.length,
        itemBuilder: (context, index) {
          final coffe = myList[index];
          return Card(
            child: ListTile(
              // leading: Image.network(),
              title: Text(coffe.title),
              subtitle: Container(child: Row(
                children: [
                  
                  Text('Quantity: ${coffe.quantity}'),
                ],
              )),
              
            ),
          );
        },
      ),
    );
  }
}
