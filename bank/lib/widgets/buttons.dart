import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Column(
        children: <Widget>[
          RaisedButton(
            child: Text('Depo'),
            onPressed: () {},
          ),
          RaisedButton(
            child: Text('Saque'),
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
