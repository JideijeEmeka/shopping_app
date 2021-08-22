import 'package:flutter/material.dart';

class PhoneTablets extends StatefulWidget {
  @override
  _PhoneTabletsState createState() => _PhoneTabletsState();
}

class _PhoneTabletsState extends State<PhoneTablets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.11),
      margin: EdgeInsets.symmetric(horizontal: 30),
      height: 130,
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
                          'assets/images/digital_01.jpg',
                          height: 92,
                          width: 100,
                        ),
                      ),
                      Image.asset(
                        'assets/images/digital_04.jpg',
                        height: 120,
                        width: 100,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/digital_02.jpg',
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
                      child: Text('Phones & Tablets',
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
