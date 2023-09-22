import 'package:flutter/material.dart';

import 'MyCustomForm.dart';
import 'YourData.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NavigationExample(),
    );
  }
}

class NavigationExample extends StatefulWidget {
  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;
  final screens = [
    MyCustomForm(),
    YourData(name: 'manoj', email: 'manoj', password: 'manoj',


    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          selectedIndex: currentPageIndex,
          backgroundColor: Colors.red[800],
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              selectedIcon: Icon(Icons.home),
            ),
            NavigationDestination(
              icon: Icon(Icons.school_outlined),
              label: 'School',
              selectedIcon: Icon(Icons.school),
            ),
            NavigationDestination(
              icon: Icon(Icons.business_outlined),
              label: 'Business',
              selectedIcon: Icon(Icons.business),
            ),
          ],
        ),
    body: screens[currentPageIndex],

    );
  }
}