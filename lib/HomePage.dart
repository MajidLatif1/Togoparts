import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Tab> myTabs = [
      Tab(icon: Image.asset('Assets/events.png')),
      Tab(icon: Image.asset('Assets/marketplace.png')),
      Tab(icon: Image.asset('Assets/activity.png')),
      Tab(icon: Image.asset('Assets/notifications.png')),
      Tab(icon: Image.asset('Assets/me.png')),
    ];
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
          title: Text(
            "TOGOPARTS",
            style: TextStyle(
                color: Colors.orange,
                fontWeight: FontWeight.bold,
                fontSize: 30),
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
        body: TabBarView(children: [
          Center(child: Text('Tab 1 Content')),
          Center(child: Text('Tab 2 Content')),
          Center(child: Text('Tab 3 Content')),
          Center(child: Text('Tab 4 Content')),
          Center(child: Text('Tab 5 Content')),
        ]),
        bottomNavigationBar: TabBar(
          tabs: myTabs,
          padding: EdgeInsets.all(10),
        ),
      ),
    );
  }
}
