import 'package:flutter/material.dart';
import 'package:tabbar_flutter/DrawerHeader.dart';
import 'package:tabbar_flutter/DropDown.dart';
import 'package:tabbar_flutter/PopUpClass.dart';
import 'package:tabbar_flutter/Screen2.dart';
import 'package:tabbar_flutter/constants.dart';

class HomePage extends StatefulWidget {
  static final route = '/';

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.cyan[800],
        bottom: TabBar(
          controller: _tabController,
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
              leading: kDrawerHeaderIcon,
              onTap: () {
                Navigator.pushNamed(context, Screen2.route);
              },
              dense: true,
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Move to the selected Tab', style: kDropdownItemsStyle),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: DropDown(_tabController),
                ),
              ],
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
            child: FloatingActionButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(Icons.add),
              ),
            ),
          ),
          Center(
            child: IconButton(
              color: Colors.blue,
              iconSize: 40,
              onPressed: () {},
              icon: Icon(Icons.accessible),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Move to the selected Tab', style: kDropdownItemsStyle),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: PopUpClass(_tabController),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
