import 'package:flutter/material.dart';

class Imageapp extends StatelessWidget {
  final String image;
  const Imageapp({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        // width: 150,
        padding: EdgeInsets.all(10),
        child: SizedBox(child: Image.network(image)),
        decoration: BoxDecoration(
            color: Theme.of(context).canvasColor,
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
