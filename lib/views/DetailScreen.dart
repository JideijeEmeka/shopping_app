import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_app/models/Product.dart';
import 'package:shopping_app/views/body.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(context),
      body: Body(),
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
