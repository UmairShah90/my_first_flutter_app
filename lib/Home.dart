import 'package:flutter/material.dart';

import 'package:my_first_app/Detail.dart';
import 'package:my_first_app/model/product.dart';

import 'main.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: products.length,
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 10.0),
            itemBuilder: (context, int index) {
              var p = products[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Detail()));
                },
                child: Card(
                  elevation: 5.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          bottomLeft: Radius.circular(10.0))),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding:
                        EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              width: 190.0,
                              height: 150.0,
                              child: Image.asset(
                                p.productImg,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            SizedBox(width: 5.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 12.0, left: 5.0),
                                  child: Text(
                                    p.productName,
                                    style: TextStyle(
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Row(
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Icon(
                                        Icons.star,
                                        color: Colors.yellowAccent,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10.0),
                                      child: Text(p.productReview),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      top: 10.0, left: 5.0),
                                  child: Text(p.productQuantity),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15.0),
                                  child: Text("Quantity: 1"),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
