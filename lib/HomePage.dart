import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedTab = 0;
  final List<Widget> pages = [
    Center(child: Text('Events Screen')),
    Center(child: Text('Marketplace Screen')),
    Center(child: Text('Activity Screen')),
    Center(child: Text('Notifications Screen')),
    Center(child: Text('Profile Screen')),
  ]; // Screens

  changeTab(int index) {
    setState(() {
      selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        title: Text(
          "TOGOPARTS",
          style: TextStyle(
            color: Colors.orange,
            fontWeight: FontWeight.bold,
            fontSize: 40,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset("Assets/shopping_bag.png"),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset("Assets/message.png"),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset("Assets/menubar.png"),
          ),
        ],
      ),
      body: pages[selectedTab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedTab,
        onTap: (index) => changeTab(index),
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset('Assets/events.png'),
            label: "Events",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('Assets/marketplace.png'),
            label: "Marketplace",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('Assets/activity.png'),
            label: "Activity",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('Assets/notifications.png'),
            label: "Notifications",
          ),
          BottomNavigationBarItem(
            icon: Image.asset('Assets/me.png'),
            label: "Me",
          ),
        ],
      ),
    );
    // );
  }
}
