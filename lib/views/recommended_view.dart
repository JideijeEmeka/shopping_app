import 'package:flutter/material.dart';
import 'package:shopping_app/models/Product.dart';
import 'package:shopping_app/views/DetailScreen.dart';

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
        height: 370,
        width: MediaQuery.of(context).size.width,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
            height: 5,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                ),
                children: [ItemCard(), ItemCard2(), ItemCard3(), ItemCard4()],
              ),
            ),
          ),
        ]));
  }
}

class ItemCard extends StatelessWidget {
  // final Product products[0];
  // final Function press;
  const ItemCard({
    Key? key,
    // required this.products[0],
    // required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 190,
      margin: EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              products[0].image,
              height: 140,
              width: 150,
            ),
          ),
          Positioned(
            bottom: 17,
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Text(products[0].description,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ))),
          ),
          Positioned(
            bottom: -1,
            child: Row(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Text(products[0].price,
                        style: TextStyle(
                          fontSize: 17,
                          letterSpacing: 1.3,
                          fontWeight: FontWeight.w800,
                        ))),
                Text(
                  products[0].oldPrice,
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.lineThrough),
                ),
              ],
            ),
          ),
          Positioned(
            top: 18,
            left: -55,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 75),
              height: 20,
              width: 55,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(3),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  products[0].discount,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

//2ND IMAGE IN THE GRID VIEW
class ItemCard2 extends StatelessWidget {
  const ItemCard2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailScreen(product: products[1])));
      },
      child: Container(
        height: 300,
        width: 190,
        margin: EdgeInsets.symmetric(horizontal: 6),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                products[1].image,
                height: 140,
                width: 150,
              ),
            ),
            Positioned(
              bottom: 17,
              child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Text(products[1].description,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ))),
            ),
            Positioned(
              bottom: -1,
              child: Row(
                children: [
                  Container(
                      margin: EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Text(products[1].price,
                          style: TextStyle(
                            fontSize: 17,
                            letterSpacing: 1.3,
                            fontWeight: FontWeight.w800,
                          ))),
                  Text(
                    products[1].oldPrice,
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.grey,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.lineThrough),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//THIRD IMAGE IN THE GRID VIEW
class ItemCard3 extends StatelessWidget {
  const ItemCard3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 190,
      margin: EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              products[2].image,
              height: 140,
              width: 150,
            ),
          ),
          Positioned(
            bottom: 17,
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Text(products[2].description,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ))),
          ),
          Positioned(
            bottom: -1,
            child: Row(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Text(products[2].price,
                        style: TextStyle(
                          fontSize: 17,
                          letterSpacing: 1.3,
                          fontWeight: FontWeight.w800,
                        ))),
                Text(
                  products[2].oldPrice,
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.lineThrough),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

//FOURTH IMAGE IN THE GRID VIEW
class ItemCard4 extends StatelessWidget {
  const ItemCard4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 190,
      margin: EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              products[3].image,
              height: 140,
              width: 150,
            ),
          ),
          Positioned(
            bottom: 17,
            child: Container(
                margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Text(products[3].description,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ))),
          ),
          Positioned(
            bottom: -1,
            child: Row(
              children: [
                Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Text(products[3].price,
                        style: TextStyle(
                          fontSize: 17,
                          letterSpacing: 1.3,
                          fontWeight: FontWeight.w800,
                        ))),
                Text(
                  products[3].oldPrice,
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.lineThrough),
                ),
              ],
            ),
          ),
          Positioned(
            top: 18,
            left: -55,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 75),
              height: 20,
              width: 55,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(3),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  products[3].discount,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
