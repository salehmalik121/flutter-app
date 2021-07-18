// ignore: unused_import
import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:learning/models/models.dart';

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
    Future.delayed(Duration(seconds: 2));

    loadData();
  }

  loadData() async {
    //  Future.delayed(Duration(milliseconds: 700));
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
      backgroundColor: Mytheme.cream,
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
                  Expanded(child: Cataloglist())
                else
                  Center(
                    child: CircularProgressIndicator(),
                  )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

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
            color: Mytheme.bluish,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "Trending products",
          textScaleFactor: 1.5,
          style: TextStyle(),
        )
      ]),
    );
  }
}

class Cataloglist extends StatelessWidget {
  const Cataloglist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: Catalogmodel.items.length,
        itemBuilder: (context, index) {
          final catalog = Catalogmodel.items[index];
          return Catalogitem(catalog: catalog);
        });
  }
}

class Catalogitem extends StatelessWidget {
  final Items catalog;
  const Catalogitem({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SizedBox(
        height: 200,
        child: Container(
          child: Row(children: [
            Expanded(
                flex: 5,
                child: Imageapp(
                  image: catalog.image,
                )),
            Expanded(
                flex: 6,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        catalog.name,
                        textScaleFactor: 1.6,
                        style: TextStyle(
                          color: Mytheme.bluish,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        catalog.desc,
                        textScaleFactor: 1.3,
                      ),
                      ButtonBar(
                        buttonPadding: EdgeInsets.all(0),
                        alignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$${catalog.price.toString()}",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 23),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor: MaterialStateProperty.all(
                                        Mytheme.bluish),
                                    shape: MaterialStateProperty.all(
                                        StadiumBorder())),
                                onPressed: () {},
                                child: Text(
                                  "Buy",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )),
                          )
                        ],
                      ),
                    ]))
          ]),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
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
      padding: const EdgeInsets.all(16),
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
