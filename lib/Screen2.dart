import 'package:flutter/material.dart';
import 'package:tabbar_flutter/DrawerHeader.dart';
import 'package:tabbar_flutter/HomePage.dart';

class Screen2 extends StatelessWidget {
  static final route = '/screen2';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 2'),
        backgroundColor: Colors.cyan[700],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            kDrawerHeader,
            ListTile(
              title: Text('5 Tabbed Screen'),
              leading: Icon(
                Icons.visibility,
                color: Colors.cyan[700],
                size: 30,
              ),
              onTap: () {
                Navigator.popUntil(
                    context, ModalRoute.withName(HomePage.route));
              },
              dense: true,
            ),
          ],
        ),
      ),
    );
  }
}
