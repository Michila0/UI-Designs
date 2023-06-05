import 'package:flutter/material.dart';
import "package:flutter_feather_icons/flutter_feather_icons.dart";
import 'package:ui_design/pages/home_page.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Text(
      'Index 1: Chat',
      style: optionStyle,
    ),
    Text(
      'Index 2: Favourites',
      style: optionStyle,
    ),
    Text(
      'Index 3: User Info',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = TextButton.styleFrom(
      foregroundColor: Colors.grey[300],
    );
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {},
          child: const Icon(FeatherIcons.alignLeft),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(FeatherIcons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(FeatherIcons.shoppingBag),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.send),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.heart),
            label: 'Favourites',
          ),
          BottomNavigationBarItem(
            icon: Icon(FeatherIcons.user),
            label: 'User Info',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue[400],
        unselectedItemColor: Colors.grey[300],
        elevation: 0,
        iconSize: 30,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: _onItemTapped,
      ),
    );
  }
}