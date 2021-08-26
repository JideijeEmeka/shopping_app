import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shopping_app/models/Product.dart';
import 'package:shopping_app/views/pro_sons.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 100,
            ),
            Container(
              height: 295,
              margin: EdgeInsets.all(15),
              decoration: BoxDecoration(
                  // color: Colors.blue,
                  ),
              child: ListView(
                children: [
                  CarouselSlider(
                      items: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            products[1].image,
                            fit: BoxFit.fill,
                          ),
                        )
                      ],
                      options: CarouselOptions(
                          autoPlay: true,
                          enableInfiniteScroll: true,
                          enlargeCenterPage: true,
                          autoPlayCurve: Curves.fastOutSlowIn,
                          autoPlayAnimationDuration:
                              Duration(milliseconds: 500),
                          height: 100,
                          viewportFraction: 0.8,
                          aspectRatio: 21 / 9))
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Ted Head Design Cool Cotton 1019 Free Size Round Neck Polo Shirt',
                style: TextStyle(
                    fontSize: 18,
                    decorationThickness: 1.5,
                    letterSpacing: 0.5,
                    fontWeight: FontWeight.w800,
                    color: Colors.black87),
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                color: Colors.grey.withOpacity(0.15),
                thickness: 3.3,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    '₦21000 - ₦31000',
                    style: TextStyle(
                        fontSize: 18,
                        decorationThickness: 1.5,
                        letterSpacing: 0.5,
                        fontWeight: FontWeight.w800,
                        color: Colors.black87),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        padding: EdgeInsets.symmetric(vertical: 8),
                        child: Text(
                          '₦10,000',
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Container(
                        height: 23,
                        width: 55,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Colors.deepPurpleAccent),
                        child: Padding(
                          padding: const EdgeInsets.all(6.0),
                          child: Text(
                            products[1].discount,
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                color: Colors.grey.withOpacity(0.15),
                thickness: 3.3,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Select Colour, Size',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Select',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.red,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                color: Colors.grey.withOpacity(0.15),
                thickness: 3.3,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: Colors.green,
                        child: Text(
                          '✔',
                          style: TextStyle(color: Colors.white, fontSize: 10),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        'Shipping to your state',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            wordSpacing: 1.1,
                            fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Estimated day of delivery: 2-3 Days',
                      style: TextStyle(
                          color: Colors.black, wordSpacing: 1.1, fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                color: Colors.grey.withOpacity(0.15),
                thickness: 3.3,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/member-nana.jpg'),
                    radius: 30,
                  ),
                ),
                ProSons()
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.only(left: 104),
              child: Row(
                children: [
                  Container(
                      width: 85,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.deepPurpleAccent,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Text(
                          'FOLLOW',
                          style: TextStyle(
                              color: Colors.deepPurpleAccent,
                              fontSize: 10,
                              fontWeight: FontWeight.w900),
                          textAlign: TextAlign.center,
                        ),
                      )),
                  SizedBox(width: 20),
                  Container(
                      width: 130,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          color: Colors.deepPurple),
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Text(
                          'VISIT STORE',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 10,
                              fontWeight: FontWeight.w900),
                          textAlign: TextAlign.center,
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Divider(
                color: Colors.grey.withOpacity(0.15),
                thickness: 3.3,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Description',
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
