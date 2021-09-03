import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartCounter extends StatefulWidget {
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  bool isButtonClickable = true;

  int numOfItems = 1;
  int amount = 21000; //actual amount of the product
  int price = 21000;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text('QUANTITY:',
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ))),
            ),
            SizedBox(
              width: 12,
            ),
            Text('40',
                style: GoogleFonts.lato(
                    textStyle: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                ))),
            SizedBox(
              width: 9,
            ),
            Container(
              height: 45,
              width: 160,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      if (numOfItems > 1) {
                          setState(() {
                            numOfItems--;
                          });
                        }
                        if (price > amount) {
                          price -= amount;
                        } else {setState(() {
                        isButtonClickable = false;
                      });}
                    },
                    style: OutlinedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30))),
                            primary: Colors.black,
                            backgroundColor: Colors.white,
                            side: BorderSide(color: Colors.grey, width: 2)
                            ),
                    child: Icon(
                      Icons.remove,
                      size: 25,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(numOfItems.toString(), style: TextStyle(fontSize: 17)),
                  SizedBox(
                    width: 10,
                  ),
                  OutlinedButton(
                    onPressed: () {
                      if (numOfItems < 3) {
                        setState(() {
                          numOfItems++;
                          price += amount;
                          
                        });
                      } else {setState(() {
                        isButtonClickable = false;
                      });}
                    },
                    style: OutlinedButton.styleFrom(
                        shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30))),
                            primary: Colors.black,
                            backgroundColor: Colors.white,
                            side: BorderSide(color: Colors.grey, width: 2)
                            ),
                    child: Icon(
                      Icons.add,
                      size: 25,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 35,
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20),
              child: Text('PRICE:',
                  style: GoogleFonts.lato(
                      textStyle: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ))),
            ),
            SizedBox(
              width: 10,
            ),
            Text('₦', style: TextStyle(fontSize: 16, letterSpacing: 0.5)),
            Text(price.toString(),
                style: TextStyle(fontSize: 16, letterSpacing: 0.5)),
          ],
        ),
      ],
    );
  }
}
