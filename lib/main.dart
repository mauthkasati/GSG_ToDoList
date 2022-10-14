import 'package:flutter/material.dart';
import 'package:training/screens/All.dart';
import 'package:training/screens/complete.dart';
import 'package:training/screens/incomplete.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(Object context) {
    return Theme(
        data: ThemeData.dark(),
        child: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                title: const Center(
                  child: Text('Muath_ToDo_List'),
                ),
                bottom: const TabBar(
                  tabs: [
                    Tab(
                      text: 'all_tasks',
                    ),
                    Tab(
                      text: 'complete_tasks',
                    ),
                    Tab(
                      text: 'incomplete_tasks',
                    ),
                  ],
                ),
              ),
              drawer: Drawer(
                // Add a ListView to the drawer. This ensures the user can scroll
                // through the options in the drawer if there isn't enough vertical
                // space to fit everything.
                child: ListView(
                  // Important: Remove any padding from the ListView.
                  padding: EdgeInsets.zero,
                  children: const [
                    DrawerHeader(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                      ),
                      child: UserAccountsDrawerHeader(
                        accountName: Text('Muath'),
                        accountEmail: Text('Muath@gmail.com'),
                        currentAccountPicture: CircleAvatar(
                          child: Text('M'),
                        ),
                      ),
                    ),
                    ListTile(
                      title: Text('all tasks'),
                      subtitle: Text('complete and in comlete'),
                      leading: Text('items'),
                      trailing: Text('items'),
                    ),
                    ListTile(
                      title: Text('complete'),
                      subtitle: Text('incomplete tasks only'),
                      leading: Text('items'),
                      trailing: Text('items'),
                    ),
                  ],
                ),
              ),
              body: const TabBarView(
                children: [
                  All(),
                  Complete(),
                  InComplete(),
                ],
              ),
            )));
  }
}
