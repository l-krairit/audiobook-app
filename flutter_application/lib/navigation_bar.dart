import 'package:flutter/material.dart';
import 'package:audiobook_application/pages/home_page.dart';
import 'package:audiobook_application/pages/library_page.dart';
import 'package:audiobook_application/pages/search_page.dart';
import 'package:audiobook_application/pages/scan_page.dart';


class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;

  late List<Widget> _widgetOptions;
  OverlayEntry? _overlayEntry;

  _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    _widgetOptions = <Widget>[
      const HomePage(),
      const LibraryPage(), 
      const SearchPage(),
      const ScanPage(), 
    ];
  }

  @override
  void dispose() {
    _overlayEntry?.remove();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _widgetOptions.elementAt(_selectedIndex),
          Align(
              alignment: Alignment.topCenter,
              child: _navBar(),),
        ],
      ),
    );
  }

  Widget _navBar() {
    return Padding(
      padding: const EdgeInsets.only(top:10),
      child: Stack(
        alignment: Alignment.topCenter,
        clipBehavior: Clip.none,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: () => _onItemTapped(0),
                child: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    color: _selectedIndex == 0 ? Colors.blue : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.home, color: Colors.black),
                ),
                ),
                GestureDetector(
                onTap: () => _onItemTapped(1),
                child: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    color: _selectedIndex == 1 ? Colors.blue : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.book, color: Colors.black),
                ),
                ),
                GestureDetector(
                onTap: () => _onItemTapped(2),
                child: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    color: _selectedIndex == 2 ? Colors.blue : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.search, color: Colors.black),
                ),
                ),
                GestureDetector(
                onTap: () => _onItemTapped(3),
                child: Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    color: _selectedIndex == 3 ? Colors.blue : Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.camera, color: Colors.black),
                ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}