// ignore: unused_import
import 'dart:convert';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:learning/models/models.dart';
// ignore: unused_import
import 'package:learning/pages/cart.dart';
import 'package:learning/pages/utis/routes.dart';
import 'package:learning/pages/widgets/Home_widgets/catalog_list.dart';
import 'package:learning/pages/widgets/Home_widgets/header.dart';

import 'widgets/theme.dart';

// ignore: camel_case_types
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final json = await rootBundle.loadString("assets/files/data.json");
    final decoded = jsonDecode(json);
    final productData = decoded["products"];
    Catalogmodel.items = List.from(productData)
        .map<Items>((items) => Items.fromMap(items))
        .toList();
    setState(() {});
  }

  final Color bluish = Color(0xaa403aa2);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          decoration: BoxDecoration(color: Colors.transparent),
          child: SizedBox(
            height: 60,
          ),
        ),
        color: Theme.of(context).buttonColor,
        shape: CircularNotchedRectangle(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: Container(
        height: 70,
        width: 70,
        child: FloatingActionButton(
            backgroundColor: Theme.of(context).buttonColor,
            onPressed: () {
              Navigator.pushNamed(context, Myroutes.cartRoute);
            },
            child: Icon(
              CupertinoIcons.cart,
              color: Colors.white,
            )),
      ),
      backgroundColor: Theme.of(context).canvasColor,
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Container(
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(alignment: Alignment.topLeft, child: Header()),
                if (Catalogmodel.items.isNotEmpty)
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.only(bottom: 0),
                    child: Cataloglist(),
                  ))
                else
                  Expanded(child: Center(child: CircularProgressIndicator())),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Imageapp extends StatelessWidget {
  final String image;
  const Imageapp({
    Key? key,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: Container(
        // width: 150,
        padding: EdgeInsets.all(10),
        child: SizedBox(child: Image.network(image)),
        decoration: BoxDecoration(
            color: Mytheme.cream, borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
