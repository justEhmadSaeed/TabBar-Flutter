import 'package:flutter/material.dart';
import 'package:tabbar_flutter/DrawerHeader.dart';
import 'package:tabbar_flutter/Screen2.dart';

class HomePage extends StatelessWidget {
  static final route = '/';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Colors.cyan[800],
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                child: Text('Tab 1'),
              ),
              Tab(
                child: Text('Tab 2'),
              ),
              Tab(
                child: Text('Tab 3'),
              ),
              Tab(
                child: Text('Tab 4'),
              ),
              Tab(
                child: Text('Tab 5'),
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              kDrawerHeader,
              ListTile(
                title: Text('6 Tabbed Screen'),
                leading: Icon(
                  Icons.visibility,
                  color: Colors.cyan[700],
                  size: 30,
                ),
                onTap: () {
                  Navigator.pushNamed(context, Screen2.route);
                },
                dense: true,
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('I AM AN ELEVATED BUTTON'),
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('I AM AN ELEVATED BUTTON'),
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('I AM AN ELEVATED BUTTON'),
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('I AM AN ELEVATED BUTTON'),
                ),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {},
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('I AM AN ELEVATED BUTTON'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
