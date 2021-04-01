import 'package:flutter/material.dart';
import 'screens/top.dart';
import 'screens/extrato_and_list.dart';

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
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        //backgroundColor: Colors.grey.shade300,
        backgroundColor: Colors.white,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'BANCO EXEMPLO S/A',
            style: TextStyle(
              fontFamily: 'Futura',
              color: Colors.white,
              fontSize: 13,
              letterSpacing: 2,
            ),
          ),
          centerTitle: true,
        ),
        body: Column(
          //toda a tela
          children: [
            Top(),
            ExtratoAndList(),
          ],
        ),
      ),
    );
  }
}
