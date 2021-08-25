import 'package:flutter/material.dart';

class RecommendedView extends StatefulWidget {
  @override
  _RecommendedViewState createState() => _RecommendedViewState();
}

class _RecommendedViewState extends State<RecommendedView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.withOpacity(0.11),
      margin: EdgeInsets.symmetric(horizontal: 30),
      height: 400,
      width: 340,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: Text('Recommended for you',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                )),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            height: 180,
            width: 160,
            margin: EdgeInsets.symmetric(horizontal: 15),
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(10)),
                child: Image.asset('name'),
          ),
        ],
      ),
    );
  }
}
