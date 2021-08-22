import 'package:flutter/material.dart';

class BeautyHealth extends StatefulWidget {
  @override
  _BeautyHealthState createState() => _BeautyHealthState();
}

class _BeautyHealthState extends State<BeautyHealth> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.11),
      margin: EdgeInsets.symmetric(horizontal: 30),
      height: 230,
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
                          'assets/images/organics_spa_2.jpg',
                          height: 120,
                          width: 100,
                        ),
                      ),
                      Image.asset(
                        'assets/images/organics_spa_3.jpg',
                        height: 120,
                        width: 100,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/organics_spa_4.jpg',
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
                      child: Text('Beauty & Health',
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
