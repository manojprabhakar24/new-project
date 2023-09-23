import 'package:flutter/material.dart';
import 'package:mydemo/thankyou.dart';
import 'Yourform.dart';
import 'myform.dart';


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
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
              selectedIcon: Icon(Icons.home),
            ),
            NavigationDestination(
              icon: Icon(Icons.mail_outline),
              label: 'Sign-In',
              selectedIcon: Icon(Icons.mail),
            ),
            NavigationDestination(
              icon: Icon(Icons.newspaper_outlined),
              label: 'Message',
              selectedIcon: Icon(Icons.newspaper),
            ),
          ],
        ),
    body: <Widget>[
      Mydata(),
      Yourform(),
      Thankyou(),

    ][currentPageIndex],

    );
  }
}