import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_provider/provider/coffe_provider.dart';
import 'package:test_provider/screen/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      
      providers: [
        ChangeNotifierProvider(create: (_) => MovieProvider()), // Assuming MovieProvider is a ChangeNotifier
        // Add other providers if needed
      ],
      child: const MaterialApp(
        title: 'My App',
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
      ),
    );
  }
}
