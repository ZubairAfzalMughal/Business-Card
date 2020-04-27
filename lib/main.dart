import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: Color(0xFF282A36),
        primaryColor: Colors.pink,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
          title: Text('Contact'),
        ),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 40.0,
                backgroundImage: AssetImage('images/zubair.jfif'),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text('Muhammad Zubair Afzal'.toUpperCase()),
              SizedBox(
                height: 15.0,
                width: 200.0,
                child: Divider(
                  color: Colors.pink,
                ),
              ),
              Text('Andriod Developer'.toUpperCase()),
              SizedBox(
                height: 10.0,
              ),
              Card(
                margin: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.pink,
                  ),
                  title: Text('92311 4598019'),
                ),
              ),
              Card(
                margin: EdgeInsets.all(10.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email,
                    color: Colors.pink,
                  ),
                  title: Text('zubairafzal621@gmail.com'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
