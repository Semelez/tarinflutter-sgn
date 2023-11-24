import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:testflutter/home.dart';

class TabPage extends StatefulWidget {
  const TabPage({super.key});

  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> {
  int currentPageIndex = 0;
  final activePage = [
    const MyHomePage(),
    const Text('Navigation'),
    const Text('List'),
    const Text('Other'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Responsive Flutter'),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 104, 104, 103),
              ),
              child: Text(
                'Drawer Header',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: activePage.elementAt(currentPageIndex),
      ),
      bottomNavigationBar: Container(
        color: Color.fromARGB(255, 240, 240, 239),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: GNav(
            backgroundColor: Color.fromARGB(255, 249, 248, 246),
            color: const Color.fromARGB(255, 8, 8, 8),
            activeColor: Colors.white,
            iconSize: 30,
            tabBackgroundColor: const Color.fromARGB(255, 18, 18, 18),
            gap: 20,
            padding: const EdgeInsets.all(15),
            onTabChange: (index) {
              setState(() {
                currentPageIndex = index;
              });
              print(index);
            },
            selectedIndex: currentPageIndex,
            tabs: const [
              GButton(icon: Icons.layers_outlined, text: 'Layout'),
              GButton(icon: Icons.navigation, text: 'navigation'),
              GButton(icon: Icons.list, text: 'List'),
              GButton(icon: Icons.assistant_outlined, text: 'other'),
            ],
          ),
        ),
      ),
    );
  }
}
