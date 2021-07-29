import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        title: Text("Cart", textScaleFactor: 1.5, style: TextStyle()),
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Placeholder(),
              ),
              Divider()
            ],
          ),
        ),
      ),
    );
  }
}
