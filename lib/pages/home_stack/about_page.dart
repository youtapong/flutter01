import 'package:flutter/material.dart';

class AboutPage extends StatefulWidget {
  AboutPage({Key key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('about'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/building.png'),
            SafeArea(
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'ทีโอที',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    Divider(),
                    Text('xxxx xxxx yyyy zzzzz'),
                    Divider(),
                    SizedBox(
                      height: 20,
                    ),
                    buildRowTOTAcademy(),
                    Divider(),
                    buildWrapPerson(),
                    Divider(),
                    buildRowFooter(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
////////////// End of Page

  Row buildRowTOTAcademy() {
    return Row(
      children: [
        Column(
          children: [
            Icon(
              Icons.wb_auto,
              color: Colors.orange,
            )
          ],
        ),
        SizedBox(
          width: 20,
        ),
        Column(
          children: [
            Row(
              children: [Text('สถาบันวิชาการทีโอที')],
            ),
            Row(
              children: [Text('xxx xxxx yyyy zzz')],
            ),
          ],
        ),
      ],
    );
  }

  Wrap buildWrapPerson() {
    return Wrap(
      spacing: 8,
      children: List.generate(
          7,
          (index) => Chip(
                label: Text('${index + 1} บุคคลการ'),
                avatar: Icon(Icons.person),
                backgroundColor: Colors.orange[100],
              )),
    );
  }

  Row buildRowFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/me.png',
            ),
            radius: 40),
        CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/me.png',
            ),
            radius: 40),
        CircleAvatar(
            backgroundImage: AssetImage(
              'assets/images/me.png',
            ),
            radius: 40),
        SizedBox(
          child: Column(
            children: [
              Icon(
                Icons.work,
                color: Colors.blue,
              ),
              Icon(
                Icons.lock_clock,
                color: Colors.blue,
              ),
              Icon(
                Icons.spa,
                color: Colors.blue,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
