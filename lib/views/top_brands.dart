import 'package:flutter/material.dart';
import 'package:shopping_app/models/topbrands_model.dart';

class TopBrands extends StatefulWidget {
  @override
  _TopBrandsState createState() => _TopBrandsState();
}

class _TopBrandsState extends State<TopBrands> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.11),
      margin: EdgeInsets.symmetric(horizontal: 30),
      height: 150,
      width: 340,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Text('Top Brands',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                )),
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(
              child: Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: ListView.builder(
                itemCount: topbrands.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  // TopBrands topBrand = topbrands[index];
                  return Container(
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      width: 120,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 0),
                              blurRadius: 0.2,
                            )
                          ])
                          child: ,
                          );
                }),
          ))
        ],
      ),
    );
  }
}
