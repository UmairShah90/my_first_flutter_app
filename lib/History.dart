import 'package:flutter/material.dart';

import 'main.dart';
import 'model/product.dart';

class History extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppbar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Username",
                      suffixIcon: Icon(Icons.search),
                      border: OutlineInputBorder()),
                ),
                SizedBox(height: 15.0),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Text("History",
                      style: TextStyle(
                        fontSize: 20.0,
                      )),
                ),
                SizedBox(height: 15.0),
                ListView.builder(
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: products.length,
                    shrinkWrap: true,
                    itemBuilder: (context, int index) {
                      var p = products[index];
                      return SingleChildScrollView(
                        scrollDirection: Axis.vertical,
                        child: ListTile(
                          title: Text(p.productName),
                          subtitle: Text("hello"),
                          leading: CircleAvatar(
                            radius: 20.0,
                            backgroundColor: Colors.transparent,
                            backgroundImage: AssetImage(p.productImg),
                          ),
                          trailing: Text('\$' + p.productPrice),
                        ),
                      );
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
