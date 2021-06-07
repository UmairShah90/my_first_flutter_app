import 'package:flutter/material.dart';
import 'package:my_first_app/History.dart';

class Detail extends StatelessWidget {
  const Detail({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 50.0),
        child: Container(
          // margin: EdgeInsets.only(left: 58.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.white,
                child: Image.asset('assets/user.png'),
              ),
              SizedBox(height: 10.0),
              Text(
                "Umair Zafar",
                style: TextStyle(fontSize: 25.0),
              ),
              Text(
                "umair@gmail.com",
                style: TextStyle(color: Colors.grey),
              ),
              OutlineButton(
                child: Text("History"),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => History()));
                },
              ),
              SizedBox(height: 20.0),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Text(
                        "ACCOUNT INFORMATION",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Padding(
                      padding: const EdgeInsets.only(right: 10.0, left: 3.0),
                      child: ListTile(
                        title: Text(
                          "Full Name",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold),
                        ),
                        trailing: Icon(Icons.edit),
                        subtitle: Text("User"),
                      ),
                    ),
                    ListTile(
                      title: Text(
                        "Email",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("user@gmail.com"),
                    ),
                    ListTile(
                      title: Text(
                        "Phone",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("+92 26541154"),
                    ),
                    ListTile(
                      title: Text(
                        "Address",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Karachi,Pakistan"),
                    ),
                    ListTile(
                      title: Text(
                        "Gender",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text("Male"),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
