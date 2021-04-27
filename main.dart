import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TextField_Widget',
      theme: ThemeData(primaryColor: Colors.lime),
      home: Scaffold(
        appBar: AppBar(
          title: Text('TextField_Widget'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: name,
                decoration: InputDecoration(
                  hintText: 'Enter Your Name',
                  suffixIcon: Icon(Icons.person),
                  labelText: 'Enter Name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                controller: password,
                obscureText: true,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Enter Your Password',
                  suffixIcon: Icon(Icons.lock),
                  labelText: 'Enter Password',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Builder(builder: (context){
                return RaisedButton(
                  color: Colors.blue,
                  child: Text(
                    'SignIn',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  onPressed: () {
                    signup(context);
                  },
                );
              })
            )
          ],
        ),
      ),
    );
  }

  void signup(BuildContext context) {
    var alertdialog = AlertDialog(
      title: Text('Alert Message'),
      content: Text(name.text),
      actions: [
        // ignore: deprecated_member_use
        FlatButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Ok')),
      ],
    );
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return alertdialog;
        });
  }
}
