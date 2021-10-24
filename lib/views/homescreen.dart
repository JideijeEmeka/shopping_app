import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:badges/badges.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:shopping_app/views/beauty_health.dart';
import 'package:shopping_app/views/flash_sales_carousel.dart';
import 'package:shopping_app/views/homePageSlider.dart';
import 'package:shopping_app/views/phone_accessories.dart';
import 'package:shopping_app/views/phone_tablets.dart';
import 'package:shopping_app/views/popular_categories.dart';
import 'package:shopping_app/views/recommended_view.dart';
import 'package:shopping_app/views/selling_items_carousel.dart';
import 'package:shopping_app/views/top_brands_carousel.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

Color c = const Color.fromRGBO(160, 32, 240, 0.8);

class _HomeScreenState extends State<HomeScreen> {
  int _currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 100,
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
                      backgroundColor: c,
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
                        fontSize: 13, color: Colors.grey, letterSpacing: 1.4)),
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
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      // extendBodyBehindAppBar: true,
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
            PopularCategories(),
            BeautyHealth(),
            PhoneTablets(),
            PhoneAccessories(),
            FlashSalesCarousel(),
            TopBrandsCarousel(),
            RecommendedView(),
            Container(
              color: Colors.grey.withOpacity(0.11),
              margin: EdgeInsets.symmetric(horizontal: 30),
              height: 20,
              width: MediaQuery.of(context).size.width,
            ),
          ],
        ),
      ),  
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        selectedFontSize: 14,
        unselectedFontSize: 11,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.thLarge), label: "Categories"),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.comment), label: "Chat"),
          BottomNavigationBarItem(
              icon: Badge(
                  shape: BadgeShape.circle,
                  badgeColor: Colors.red,
                  position: BadgePosition.topEnd(top: -1, end: -6),
                  padding: EdgeInsets.all(4),
                  badgeContent: Text(
                    '5',
                    style: TextStyle(color: Colors.white, fontSize: 7.5),
                  ),
                  child: Icon(FontAwesomeIcons.userCircle)),
              label: "Account"),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}
