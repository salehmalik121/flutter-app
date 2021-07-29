import 'package:flutter/material.dart';
import 'package:learning/models/models.dart';
// ignore: duplicate_import
import 'package:velocity_x/velocity_x.dart';

class Details extends StatelessWidget {
  final Items catalog;
  const Details({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ButtonBar(
          buttonPadding: EdgeInsets.all(0),
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$${catalog.price.toString()}",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Theme.of(context).accentColor),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                height: 50,
                width: 100,
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Theme.of(context).buttonColor),
                      shape: MaterialStateProperty.all(StadiumBorder())),
                  onPressed: () {},
                  child: Icon(Icons.add_shopping_cart),
                  // child: Text(
                  //   "Buy",
                  //   style: TextStyle(
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 20,
                  //   ),
                  // )
                ),
              ),
            )
          ],
        ),
      ),
      backgroundColor: Theme.of(context).canvasColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 32,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(
                      catalog.image,
                      //height: 500,
                    )),
              ),
            ),
            SingleChildScrollView(
              child: Expanded(
                flex: 68,
                child: VxArc(
                    arcType: VxArcType.CONVEY,
                    edge: VxEdge.TOP,
                    height: 40,
                    child: Container(
                      color: Theme.of(context).cardColor,
                      width: context.screenWidth,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 60),
                        child: Column(
                          children: [
                            Text(
                              catalog.name,
                              style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).buttonColor),
                            ),
                            Text(catalog.desc,
                                textScaleFactor: 1.3,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey)),
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: Text(
                                  "Ipsum consetetur sit est at eirmod tempor, no labore sed voluptua dolor. Sit sea sadipscing no stet. Et gubergren elitr sed ipsum justo accusam rebum. Sed at ipsum invidunt amet erat sit, no et et rebum accusam lorem invidunt est, lorem sit at at sed sadipscing. Labore ea gubergren sit.",
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Theme.of(context).accentColor)),
                            )
                          ],
                        ),
                      ),
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
