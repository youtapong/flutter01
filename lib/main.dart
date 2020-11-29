import 'package:flutter/material.dart';
//import 'package:flutter_learn/pages/home_stack/about_page.dart';
//import 'package:flutter_learn/pages/home_stack/home_page.dart';
import 'package:flutter_learn/pages/home_stack/home_stack.dart';

import 'pages/product_stack/product_stack.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          //canvasColor: Colors.amberAccent,
          //accentColor: Color(0xFF004d40),
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: TextTheme(
              headline1: TextStyle(
                  fontSize: 40,
                  color: Colors.deepOrange,
                  fontWeight: FontWeight.bold),
              headline2: TextStyle(
                  fontSize: 20,
                  color: Colors.red,
                  fontWeight: FontWeight.bold))),
      //home: MyHomePage(title: 'Flutter Demo Home Page'),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        //  '/': (context) => MyHomePage(),
        '/': (context) => HomeStack(),
        '/homestack': (context) => HomeStack(),
        '/productstack': (context) => ProductStack(),
      },
    );
  }
}
