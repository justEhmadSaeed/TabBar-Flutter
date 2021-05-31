import 'package:flutter/material.dart';
import 'package:tabbar_flutter/CheckBoxList.dart';
import 'package:tabbar_flutter/DatePicker.dart';
import 'package:tabbar_flutter/DrawerHeader.dart';
import 'package:tabbar_flutter/HomePage.dart';
import 'package:tabbar_flutter/RadioList.dart';
import 'package:tabbar_flutter/SliderClass.dart';
import 'package:tabbar_flutter/SwitchButton.dart';
import 'package:tabbar_flutter/constants.dart';

class Screen2 extends StatefulWidget {
  static final route = '/screen2';

  @override
  _Screen2State createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 6, vsync: this);
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
        title: Text('Screen 2'),
        backgroundColor: Colors.cyan[700],
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
        controller: _tabController,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: CheckBoxList(
                children: [
                  'Tab 1',
                  'Tab 2',
                  'Tab 3',
                  'Tab 4',
                  'Tab 5',
                  'Tab 6',
                ],
                controller: _tabController,
              ),
            ),
          ),
          Center(child: DatePicker()),
          Center(child: RadioList()),
          Center(child: SwitchButton()),
          Center(
            child: SliderClass(),
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
    );
  }
}
