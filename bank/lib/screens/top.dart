import 'package:flutter/material.dart';
import 'name_and_picture.dart';
import '../widgets/saldo.dart';

class Top extends StatefulWidget {
  Top(this.saldototal);

  double saldototal;

  @override
  _TopState createState() => _TopState();
}

class _TopState extends State<Top> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //box
      width: double.infinity,
      padding: EdgeInsets.only(top: 25.0, bottom: 25.0, right: 40, left: 40),
      height: (245),
      decoration: BoxDecoration(
        color: Color(0xFF0AACA0),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(35),
          bottomRight: Radius.circular(35),
        ),
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: [0.1, 1.0],
            colors: [Color(0xFF1FD4EA), Color(0xFFA3FCBB)]),
      ),
      child: Column(
        children: <Widget>[
          NameAndPicture(
            name: 'Eyder Rios',
          ),
          Saldo(
            saldo: widget.saldototal,
          ),
        ],
      ),
    );
  }
}
