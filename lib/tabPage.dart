import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  @override
  _TabPageState createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with TickerProviderStateMixin {
  TabController controller;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text(
            'WhatsApp',
            style: TextStyle(
                color: Colors.grey, fontSize: 16, fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(icon: Icon(Icons.search), onPressed: () {}),
            IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          ],
          bottom: TabBar(
            indicatorColor: Colors.teal[300],
            labelStyle: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            labelColor: Colors.teal[300],
            unselectedLabelColor: Colors.grey,
            labelPadding: EdgeInsets.symmetric(horizontal: 20.0),
            indicatorPadding: EdgeInsets.zero,
            indicatorWeight: 2.7,
            isScrollable: true,
            tabs: [
              Tab(
                child: Icon(Icons.camera_enhance),
              ),
              Tab(text: 'CHATS'),
              Tab(text: 'STATUS'),
              Tab(text: 'CALLS'),
            ],
          ),
        ),
        body: TabBarView(children: [
          Center(
            child: Text('Camera page'),
          ),
          Center(
            child: Text('Chats page'),
          ),
          Center(
            child: Text('Status page'),
          ),
          Center(
            child: Text('Calls page'),
          ),
        ]),
      ),
    );
  }
}
