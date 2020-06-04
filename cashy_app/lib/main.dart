import 'package:cashy_app/font_style.dart';
import 'package:flutter/material.dart';
import 'font_style.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
            appBar: AppBar(title: Text("Cashy"), backgroundColor: Colors.green),
            body: SafeArea(
                child: Container(
                  margin: EdgeInsets.only(left:23.0, top:0, right:23.0, bottom:0),
                  padding: EdgeInsets.only(left:0, top:0, right:0, bottom:0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('assets/images/ic_payment.png'),
                    height: 200,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20.0,
                      bottom: 4.0
                    ),
                    child: Text("Rich Together", style: mainHeader,),
                  ),
                  Text(
                    "Save your money litle bit and we \nwill help to be rich.", style: subHeader , textAlign: TextAlign.center,)
                ],
              ),
              ],)
            ))));
  }
}
