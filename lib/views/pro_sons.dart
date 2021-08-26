import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProSons extends StatefulWidget {
  @override
  _ProSonsState createState() => _ProSonsState();
}

class _ProSonsState extends State<ProSons> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(right: 85),
          child: Text(
            'Pro & Sons Designs Store..',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 13,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 0, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(FontAwesomeIcons.comment),
                iconSize: 20,
                color: Colors.deepPurpleAccent,
              ),
              Text('Chat Seller',
                  style:
                      TextStyle(fontSize: 15, color: Colors.deepPurpleAccent)),
              SizedBox(width: 27),
              Text('225k',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  )),
              SizedBox(width: 5),
              Text('Followers',
                  style: TextStyle(
                    fontSize: 15,
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
