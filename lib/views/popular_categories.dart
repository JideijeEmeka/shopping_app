import 'package:flutter/material.dart';

class PopularCategories extends StatefulWidget {
  @override
  _PopularCategoriesState createState() => _PopularCategoriesState();
}

class _PopularCategoriesState extends State<PopularCategories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.11),
      margin: EdgeInsets.symmetric(horizontal: 30),
      height: 150,
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
          SizedBox(
            height: 5,
          ),
          Container(
            height: 120,
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Stack(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/digital_10.jpg',
                          height: 120,
                          width: 100,
                        ),
                      ),
                      Image.asset(
                        'assets/images/furniture_05.jpg',
                        height: 120,
                        width: 100,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/digital_08.jpg',
                          height: 120,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 10,
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Text('Electronics',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                          ))),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
