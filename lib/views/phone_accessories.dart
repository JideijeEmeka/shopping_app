import 'package:flutter/material.dart';

class PhoneAccessories extends StatefulWidget {
  @override
  _PhoneAccessoriesState createState() => _PhoneAccessoriesState();
}

class _PhoneAccessoriesState extends State<PhoneAccessories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.11),
      margin: EdgeInsets.symmetric(horizontal: 30),
      height: 121,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 1,
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
                          'assets/images/accessory.jpg',
                          height: 70,
                          width: 100,
                        ),
                      ),
                      Image.asset(
                        'assets/images/accessory1.jpg',
                        height: 80,
                        width: 100,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/accessory2.jpg',
                          height: 120,
                          width: 100,
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 8,
                  child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Text('Phones Accessories',
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
