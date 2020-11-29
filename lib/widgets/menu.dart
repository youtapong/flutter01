import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  Menu({Key key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: null,
            accountEmail: Text('youtapong@hotmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/images/me.png'),
            ),
          ),
          ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.blue,
                size: 30,
              ),
              title: Text('หน้าหลัก'),
              trailing: Icon(
                Icons.arrow_right,
                size: 30,
              ),
              //selected: true,
              selected: ModalRoute.of(context).settings.name == 'homestack/home'
                  ? true
                  : false,
              onTap: () {
                Navigator.of(context, rootNavigator: true)
                    .pushNamedAndRemoveUntil('/homestack', (route) => false);
              }),
          ListTile(
              leading: Icon(
                Icons.account_box,
                color: Colors.blue,
                size: 30,
              ),
              title: Text('สินค้า'),
              trailing: Icon(
                Icons.arrow_right,
                size: 30,
              ),
              //selected: true,
              selected:
                  ModalRoute.of(context).settings.name == 'productstack/home'
                      ? true
                      : false,
              onTap: () {
                Navigator.of(context, rootNavigator: true)
                    .pushNamedAndRemoveUntil('/productstack', (route) => false);
              }),
        ],
      ),
    );
  }
}
