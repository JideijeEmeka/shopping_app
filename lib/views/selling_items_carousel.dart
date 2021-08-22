import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_app/models/sellingItems_model.dart';

class SellingItemsCarousel extends StatefulWidget {
  @override
  _SellingItemsCarouselState createState() => _SellingItemsCarouselState();
}

class _SellingItemsCarouselState extends State<SellingItemsCarousel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.11),
      margin: EdgeInsets.symmetric(horizontal: 30),
      height: 230,
      child: Container(
        height: 100,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(height: 5),
          Text(" Top Selling Items",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5)),
          Expanded(
            child: Container(
                height: 250,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: sellingitems.length,
                    itemBuilder: (BuildContext context, int index) {
                      SellingItems sellingItem = sellingitems[index];
                      return Container(
                        width: 130,
                        margin: EdgeInsets.all(0),
                        child: Stack(
                          alignment: Alignment.topCenter,
                          children: [
                            Positioned(
                              bottom: -15,
                              left: 8,
                              child: Container(
                                width: 120,
                                height: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white,
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      sellingItem.price,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    SizedBox(width: 5),
                                    Expanded(
                                      child: Container(
                                        width: 50,
                                        height: 30,
                                        decoration: BoxDecoration(
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Expanded(
                                              child: IconButton(
                                                iconSize: 16,
                                                icon: Icon(
                                                    FontAwesomeIcons.chartLine),
                                                onPressed: () {},
                                                color: Colors.white,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(7.0),
                                              child: Text(
                                                'Top',
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight:
                                                        FontWeight.bold),
                                                textAlign: TextAlign.justify,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 45,
                              left: 8,
                              child: Container(
                                width: 120,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey,
                                        offset: Offset(0, 0),
                                        blurRadius: 0.2,
                                      )
                                    ]),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(
                                    sellingItem.imageUrl,
                                    fit: BoxFit.fill,
                                    height: 120,
                                    width: 200,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    })),
          ),
        ]),
      ),
    );
  }
}
