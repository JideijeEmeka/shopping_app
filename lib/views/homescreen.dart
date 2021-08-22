import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:badges/badges.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopping_app/views/homePageSlider.dart';
import 'package:shopping_app/views/selling_items_carousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 25,
                ),
                height: 34,
                width: 245,
                decoration: BoxDecoration(),
                child: TextFormField(
                  // cursorColor: Colors.pink,
                  decoration: InputDecoration(
                      suffixIcon: CircleAvatar(
                        radius: 10,
                        backgroundColor: Colors.purple,
                        child: Container(
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.search,
                                color: Colors.white,
                                size: 20,
                              )),
                        ),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      contentPadding: EdgeInsets.all(10),
                      hintText: "Search for a product",
                      hintStyle: TextStyle(
                          fontSize: 13,
                          color: Colors.grey,
                          letterSpacing: 1.4)),
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Badge(
                  shape: BadgeShape.square,
                  badgeColor: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                  position: BadgePosition.topEnd(top: -2, end: -2),
                  padding: EdgeInsets.all(4),
                  badgeContent: Text(
                    '15',
                    style: TextStyle(color: Colors.white, fontSize: 7.5),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      "assets/images/shopping-cart-svgrepo-com.svg",
                    ),
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: Colors.white12,
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              HomePageSlider(),
              SellingItemsCarousel(),
              Container(
                color: Colors.grey.withOpacity(0.11),
                margin: EdgeInsets.symmetric(horizontal: 30),
                height: 230,
                width: 350,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 15),
                      child: Text('Popular Categories',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.5,
                          )),
                    ),
                    Container(
                      height: 100,
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Row(
                        children: [
                          // Image.asset('name'),
                          // Image.asset('name'),
                          // Image.asset('name'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
