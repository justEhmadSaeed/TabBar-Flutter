import 'package:flutter/material.dart';
import 'package:tabbar_flutter/DrawerHeader.dart';
import 'package:tabbar_flutter/HomePage.dart';
import 'package:tabbar_flutter/constants.dart';

class Screen2 extends StatelessWidget {
  static final route = '/screen2';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Screen 2'),
          backgroundColor: Colors.cyan[700],
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
              Tab(
                child: Text('Tab 6'),
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
                title: Text('5 Tabbed Screen'),
                leading: kDrawerHeaderIcon,
                onTap: () {
                  Navigator.popUntil(
                      context, ModalRoute.withName(HomePage.route));
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
