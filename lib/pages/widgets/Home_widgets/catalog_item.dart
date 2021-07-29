import 'package:flutter/material.dart';
import 'package:learning/models/models.dart';
import 'package:learning/pages/widgets/Home_widgets/image_app.dart';

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
                child: Hero(
                  tag: Key(catalog.id.toString()),
                  child: Imageapp(
                    image: catalog.image,
                  ),
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
                          color: Theme.of(context).buttonColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(catalog.desc,
                          textScaleFactor: 1.3,
                          style:
                              TextStyle(color: Theme.of(context).accentColor)),
                      Container(
                        child: ButtonBar(
                          buttonPadding: EdgeInsets.all(0),
                          alignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$${catalog.price.toString()}",
                              style: TextStyle(
                                  color: Theme.of(context).accentColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 23),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              Theme.of(context).buttonColor),
                                      shape: MaterialStateProperty.all(
                                          StadiumBorder())),
                                  onPressed: () {},
                                  child: Icon(Icons.add_shopping_cart)
                                  // child: Text(
                                  //   "Add to cart",
                                  //   style: TextStyle(
                                  //       fontWeight: FontWeight.bold,
                                  //       fontSize: 16),
                                  // )
                                  ),
                            )
                          ],
                        ),
                      ),
                    ]))
          ]),
          decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}
