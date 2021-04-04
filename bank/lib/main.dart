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
        accentColor: Color(0xFFA3FCBB),
        fontFamily: 'Futura',
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
              backgroundColor: Colors.white,
              primary: Color(0xFF0AACA0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(35.0),
              ),
              padding: EdgeInsets.only(top: 3, left: 20, right: 20, bottom: 3)),
        ),
      ),
      home: HomePageScreen(),
    );
  }
}
