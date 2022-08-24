import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MyApp()
  );
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                foregroundImage: AssetImage("images/pic.jpg"),
                backgroundColor: Colors.white,
              ),
              Text(
                "Neil Doherty",
                style: TextStyle(
                  fontFamily: "Silkscreen",
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                )
              ),
              SizedBox(
                height: 20,
                child: Divider(
                  color: Colors.black,
                )
              ),
              Card(

                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("908-123-4567"),
                  )
              ),
              Card(
                  margin: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                  color: Colors.white,
                  child: ListTile(
                    leading: Icon(Icons.email),
                    title: Text("neil@awesome.com"),
                  )
              )
        ]


          ),
        )
      ),
    );
  }
}

