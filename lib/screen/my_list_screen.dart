// screens/my_list_screen.dart
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/coffe_provider.dart';

class MyListScreen extends StatefulWidget {
  const MyListScreen({Key? key}) : super(key: key);
  @override
  State<MyListScreen> createState() => _MyListScreenState();
}

class _MyListScreenState extends State<MyListScreen> {
  @override
  Widget build(BuildContext context) {
    final myList = context.watch<CoffeProvider>().myList;
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Color.fromARGB(255, 30, 26, 26),
        

        title: Text("My FAV LIST (${myList.length})",style: TextStyle(color: Colors.white),),
      ),
 backgroundColor: Color.fromARGB(255, 30, 26, 26),
      body: ListView.builder(
          itemCount: myList.length,
          itemBuilder: (_, index) {
            final currentCoffe = myList[index];
            return Card(
              key: ValueKey(currentCoffe.title),
              elevation: 4,
              child: ListTile(
                leading: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(currentCoffe.imageUrl)),
                // title:Image.network( currentcoffe.imageUrl),
                title: Text(currentCoffe.title),
                subtitle: Text(currentCoffe.runtime ?? ''),
                trailing: TextButton(
                  child: const Text(
                    'Remove',
                    style: TextStyle(color: Colors.red),
                  ),
                  onPressed: () {
                    context.read<CoffeProvider>().removeFromList(currentCoffe);
                  },
                ),
              ),
            );
          }),
    );
  }
}
