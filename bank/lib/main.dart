import 'package:flutter/material.dart';
import 'screens/home_page_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Banco Exemplo S/A',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.teal,
        fontFamily: 'Futura',
      ),
      home: HomePageScreen(),
    );
  }
}
