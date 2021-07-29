import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          "Cataloge App",
          textScaleFactor: 2.8,
          style: TextStyle(
            color: Theme.of(context).buttonColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Trending products",
          textScaleFactor: 1.5,
          style: TextStyle(color: Theme.of(context).accentColor),
        )
      ]),
    );
  }
}
