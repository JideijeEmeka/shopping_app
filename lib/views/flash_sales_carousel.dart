import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_app/models/flashSales_model.dart';

class FlashSalesCarousel extends StatefulWidget {
  @override
  _FlashSalesCarouselState createState() => _FlashSalesCarouselState();
}

class _FlashSalesCarouselState extends State<FlashSalesCarousel> {
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
          Row(
            children: [
              Text(" Flash Sales",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 1.5)),
              SizedBox(
                width: 5,
              ),
              CircleAvatar(
                backgroundColor: Colors.red,
                radius: 8,
                child: Icon(
                  FontAwesomeIcons.bolt,
                  size: 10,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 17,
              ),
              Container(
                height: 21,
                width: 25,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(3)),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(
                    '24',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                ':',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                width: 3,
              ),
              Container(
                height: 21,
                width: 25,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(3)),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(
                    '34',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              SizedBox(
                width: 3,
              ),
              Text(
                ':',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w800),
              ),
              SizedBox(
                width: 3,
              ),
              Container(
                height: 21,
                width: 25,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(3)),
                child: Padding(
                  padding: const EdgeInsets.all(3.0),
                  child: Text(
                    '58',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.w700),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Container(
                height: 250,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: flashsales.length,
                    itemBuilder: (BuildContext context, int index) {
                      FlashItems flashItem = flashsales[index];
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
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      flashItem.price,
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 17),
                                    ),
                                    SizedBox(width: 7),
                                    Text(
                                      '₦1,500',
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Colors.black45,
                                          decoration:
                                              TextDecoration.lineThrough),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 45,
                              left: 8,
                              child: Stack(
                                children: [
                                  Container(
                                    width: 120,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(10),
                                      child: Image.asset(
                                        flashItem.imageUrl,
                                        fit: BoxFit.fill,
                                        height: 120,
                                        width: 200,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 10,
                                    child: Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 75),
                                      height: 20,
                                      width: 35,
                                      decoration: BoxDecoration(
                                          color: Colors.purple,
                                          borderRadius:
                                              BorderRadius.circular(30)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: Text(
                                          '24%',
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
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
