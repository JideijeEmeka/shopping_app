import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
                    '₦21,000 - 32,000',
                    style: TextStyle(
                        fontSize: 18,
                        decorationThickness: 1.5,
                        letterSpacing: 0.8,
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
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'Description',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 5),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Text(
                'This Men`s white, slim fitted shirt is designed with an elegant single button pointed collar and 2 button single cuffs. Finer details include stripe contrast detail on the inner collar and inner cuffs. Our fitted shirts have been flatteringly designed with darts at the waist and bust, creating a streamlined silhouette.',
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        color: Colors.black54, fontSize: 15, wordSpacing: 1)),
              ),
            ),
            SizedBox(height: 7),
            Container(
                height: 190,
                width: 370,
                margin: EdgeInsets.symmetric(horizontal: 20),
                color: Colors.white,
                child: Image.asset('assets/images/spark5_pc-1.jpg',
                    fit: BoxFit.cover)),
            Container(
              height: 170,
              width: 370,
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/Screenshot(27).png',
                    width: 160.2,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                  Image.asset(
                    'assets/images/Screenshot(26).png',
                    fit: BoxFit.cover,
                    width: 162.5,
                    height: 180,
                  )
                ],
              ),
            ),
            Container(
                height: 170,
                width: 370,
                margin: EdgeInsets.symmetric(horizontal: 20),
                color: Colors.blue,
                child: Image.asset('assets/images/Screenshot(24).png',
                    fit: BoxFit.fill)),
            Container(
                height: 200,
                width: 370,
                margin: EdgeInsets.symmetric(horizontal: 20),
                color: Colors.blue,
                child: Image.asset('assets/images/Screenshot(25).png',
                    fit: BoxFit.fill)),
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
              height: 12,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Review (30)',
                    style: GoogleFonts.montserrat(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                            color: Colors.black)),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Text(
                    '★★★',
                    style: TextStyle(
                        fontSize: 21, color: Colors.orange, letterSpacing: 3),
                  ),
                  Text(
                    '★★',
                    style: TextStyle(
                        fontSize: 21, color: Colors.grey, letterSpacing: 3),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            //ROW FOR BOTH AVERAGE RATING AND REVIEWS
            Row(
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.orange,
                      child: Text(
                        '★',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    ),
                    SizedBox(height: 7),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        'Average Rating',
                        style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(height: 3),
                    Text(
                      '450 Reviews',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    //FIRST ROW
                    Row(
                      children: [
                        Text(
                          '5',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              width: 90,
                              height: 10.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.lightGreen,
                              ),
                            ),
                            Container(
                              width: 120,
                              height: 10.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '65%',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    //SECOND ROW
                    Row(
                      children: [
                        Text(
                          '4',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              width: 60,
                              height: 10.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.deepOrangeAccent,
                              ),
                            ),
                            Container(
                              width: 120,
                              height: 10.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '20%',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    //THIRD ROW
                    Row(
                      children: [
                        Text(
                          '3',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              width: 30,
                              height: 10.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.black,
                              ),
                            ),
                            Container(
                              width: 120,
                              height: 10.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          '10%',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    //FOURTH ROW
                    Row(
                      children: [
                        Text(
                          '2',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              width: 15,
                              height: 10.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              width: 120,
                              height: 10.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          ' 5%',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                    //LAST ROW
                    Row(
                      children: [
                        Text(
                          '1',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                        Stack(
                          children: [
                            Container(
                              width: 7,
                              height: 10.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey,
                              ),
                            ),
                            Container(
                              width: 120,
                              height: 10.5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey.withOpacity(0.5),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          ' 2%',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 18),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              width: 350,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.deepPurple),
              child: Padding(
                  padding: const EdgeInsets.all(13.0),
                  child: Text('WRITE A REVIEW',
                      style: GoogleFonts.montserrat(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 15)),
                      textAlign: TextAlign.center)),
            ),
            SizedBox(height: 18),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 30),
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.grey.withOpacity(0.2)),
                  child: ,
            ),
          ],
        ),
      ),
    );
  }
}
