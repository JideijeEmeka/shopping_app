import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shopping_app/models/Product.dart';
import 'package:shopping_app/views/body.dart';
import 'package:shopping_app/views/cart_counter.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(context),
      body: Stack(alignment: Alignment.bottomCenter, children: [
        Body(),
        SizedBox(
          height: 200,
        ),
        Container(
          height: 80,
          width: 400,
          color: Colors.white,
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 36),
                height: 43,
                width: 110,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.orangeAccent),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Add to cart',
                    style: GoogleFonts.lato(
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  _buyNowModalBottomSheet(context);
                },
                child: Container(
                  margin: EdgeInsets.only(left: 13),
                  height: 43,
                  width: 120,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      color: Colors.deepPurple),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      'Buy Now',
                      style: GoogleFonts.lato(
                        textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: 25,
              ),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey.withOpacity(0.3),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      FontAwesomeIcons.phoneAlt,
                      color: Colors.deepPurple,
                      size: 18,
                    )),
              )
            ],
          ),
        ),
      ]),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            FontAwesomeIcons.chevronLeft,
            color: Colors.black,
          )),
      centerTitle: true,
      title: Text(
        'Details',
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.4,
            color: Colors.black),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/images/icons8-home.svg',
              width: 23,
            )),
        SizedBox(width: 3),
        Stack(
          alignment: Alignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/images/shopping-cart-svgrepo-com.svg",
                width: 23,
              ),
            ),
            Positioned(
              bottom: 11,
              left: 10,
              child: IconButton(
                  onPressed: () {},
                  icon: Badge(
                      shape: BadgeShape.circle,
                      badgeColor: Colors.red,
                      position: BadgePosition.topEnd(top: -10, end: -6),
                      borderRadius: BorderRadius.circular(20),
                      padding: EdgeInsets.all(4),
                      badgeContent: Text(
                        '5',
                        style: TextStyle(color: Colors.white, fontSize: 9),
                      ))),
            ),
          ],
        ),
        SizedBox(width: 10),
      ],
    );
  }
}

void _buyNowModalBottomSheet(BuildContext context) {
  showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      context: context,
      builder: (BuildContext context) {
        return Container(
          height: 690,
          margin: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25), topRight: Radius.circular(25))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Text('Colour / Size Option',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      child: Text('Close',
                          style: GoogleFonts.lato(
                              textStyle:
                                  TextStyle(fontSize: 15, color: Colors.blue))),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 45,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text('SELECT COLOUR:',
                    style: GoogleFonts.lato(
                        textStyle: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ))),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                      height: 80,
                      width: 75,
                      margin: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey),
                      child: Container(
                          margin: EdgeInsets.all(2),
                          child: Image.asset(
                            'assets/images/tools_equipment_1.jpg',
                            fit: BoxFit.fill,
                          ))),
                  SizedBox(width: 15),
                  Container(
                      height: 80,
                      width: 75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.grey),
                      child: Container(
                          margin: EdgeInsets.all(2),
                          child: Image.asset(
                            'assets/images/tools_equipment_6.jpg',
                            fit: BoxFit.fill,
                          ))),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                margin: EdgeInsets.only(left: 20),
                child: Text('SELECT SIZE:',
                    style: GoogleFonts.lato(
                        textStyle: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ))),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.only(left: 20),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 2, color: Colors.grey.withOpacity(0.7)),
                          borderRadius: BorderRadius.circular(3)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'XS',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                            fontSize: 13,
                          )),
                          textAlign: TextAlign.center,
                        ),
                      )),
                  Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 2, color: Colors.grey.withOpacity(0.7)),
                          borderRadius: BorderRadius.circular(3)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'S',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                            fontSize: 13,
                          )),
                          textAlign: TextAlign.center,
                        ),
                      )),
                  Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 2, color: Colors.grey.withOpacity(0.7)),
                          borderRadius: BorderRadius.circular(3)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'M',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                            fontSize: 13,
                          )),
                          textAlign: TextAlign.center,
                        ),
                      )),
                  Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 2, color: Colors.grey.withOpacity(0.7)),
                          borderRadius: BorderRadius.circular(3)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'L',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                            fontSize: 13,
                          )),
                          textAlign: TextAlign.center,
                        ),
                      )),
                  Container(
                      height: 50,
                      width: 50,
                      margin: EdgeInsets.only(left: 15, right: 10),
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 2, color: Colors.grey.withOpacity(0.7)),
                          borderRadius: BorderRadius.circular(3)),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'XL',
                          style: GoogleFonts.lato(
                              textStyle: TextStyle(
                            fontSize: 13,
                          )),
                          textAlign: TextAlign.center,
                        ),
                      )),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  height: 50,
                  width: 50,
                  margin: EdgeInsets.only(left: 20),
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 2, color: Colors.grey.withOpacity(0.7)),
                      borderRadius: BorderRadius.circular(3)),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 14),
                    child: Text(
                      'XXL',
                      style: GoogleFonts.lato(
                          textStyle: TextStyle(
                        fontSize: 13,
                      )),
                      textAlign: TextAlign.center,
                    ),
                  )),
              SizedBox(
                height: 45,
              ),
              CartCounter(),
              SizedBox(
                height: 120,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    height: 43,
                    width: 110,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.orangeAccent),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Add to cart',
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 13),
                    height: 43,
                    width: 120,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: Colors.deepPurple),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Buy Now',
                        style: GoogleFonts.lato(
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w600),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey.withOpacity(0.3),
                    child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          FontAwesomeIcons.phoneAlt,
                          color: Colors.deepPurple,
                          size: 18,
                        )),
                  )
                ],
              ),
              // SizedBox(
              //   height: 15,
              // )
            ],
          ),
        );
      });
}
