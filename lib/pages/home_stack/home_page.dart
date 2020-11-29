import 'package:flutter/material.dart';
import 'package:flutter_learn/widgets/menu.dart';
//import 'package:flutter_learn/widgets/header.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String title = 'Youtapong.com';

  @override
  void initState() {
    super.initState();
    print("init state");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),

      /// Side Menu
      appBar: AppBar(
        title: Image.asset(
          'assets/images/logo_tot.png',
          height: 30,
        ),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              onPressed: null),
        ],
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'homestack/about');
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.access_time_rounded,
                    size: 80,
                    color: Colors.blue,
                  ),
                  Text(
                    "about",
                    style: TextStyle(color: Colors.pink, fontSize: 20),
                  )
                ],
              ),
              color: Colors.teal[100],
            ),
          ),
          OutlinedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green[100])),
              onPressed: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.map_rounded,
                    size: 80,
                    color: Colors.blue,
                  ),
                  Text(
                    "แผนที่",
                    style: TextStyle(color: Colors.blueAccent, fontSize: 20),
                  )
                ],
              )),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'homestack/about');
            },
            child: Container(
              padding: const EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.sanitizer,
                    size: 80,
                    color: Colors.blue,
                  ),
                  Text(
                    "ทดสอบกด",
                    style: TextStyle(color: Colors.pink, fontSize: 20),
                  )
                ],
              ),
              color: Colors.green[100],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Who scream'),
            color: Colors.teal[400],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Revolution is coming...'),
            color: Colors.teal[500],
          ),
          Container(
            padding: const EdgeInsets.all(8),
            child: const Text('Revolution, they...'),
            color: Colors.teal[600],
          ),
        ],
      ),
    );
  }
}
