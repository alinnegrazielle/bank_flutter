import 'package:flutter/material.dart';
import 'app_icons.dart';

class NameAndPicture extends StatelessWidget {
  final String name;

  const NameAndPicture({
    Key key,
    @required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 45,
            bottom: 25,
          ),
          child: Text(
            name,
            style: TextStyle(
              color: Colors.white,
              fontSize: 31,
              fontFamily: 'Futura',
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 45,
            bottom: 25,
            left: 10,
          ),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 25,
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: Icon(MyFlutterApp.account),
              color: Color(0xFF0AACA0),
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
