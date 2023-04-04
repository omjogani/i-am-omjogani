import 'package:flutter/material.dart';

class TechnologyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text("Technology"),
        Container(
          height: 50,
          width: 50,
          child: Image.asset(
            "assets/images/Technology/c.png",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 10.0),
        Container(
          height: 50,
          width: 50,
          child: Image.asset(
            "assets/images/Technology/cpp.png",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 10.0),
        Container(
          height: 50,
          width: 50,
          child: Image.asset(
            "assets/images/Technology/java.png",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 10.0),
        Container(
          height: 50,
          width: 50,
          child: Image.asset(
            "assets/images/Technology/html.png",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 10.0),
        Container(
          height: 50,
          width: 50,
          child: Image.asset(
            "assets/images/Technology/css.png",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 10.0),
        Container(
          height: 50,
          width: 50,
          child: Image.asset(
            "assets/images/Technology/javascript.png",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 10.0),
        Container(
          height: 50,
          width: 50,
          child: Image.asset(
            "assets/images/Technology/python.png",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 10.0),
        Container(
          height: 50,
          width: 50,
          child: Image.asset(
            "assets/images/Technology/flutter.png",
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(width: 10.0),
        Container(
          height: 50,
          width: 50,
          child: Image.asset(
            "assets/images/Technology/firebase.png",
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
