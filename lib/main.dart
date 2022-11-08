import 'package:flutter/material.dart';
import 'package:traffic_app/distance_page.dart';
import 'package:traffic_app/home_page.dart';
import 'package:traffic_app/languages_page.dart';
import 'package:traffic_app/setting_page.dart';
import 'package:traffic_app/voice_page.dart';

void main() {
  runApp(const MyApp());
}

int currentPage = 0;

final _pageOptions = [
  const HomePage(),
  const SettingPage(),
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blueGrey),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "Traffic Light",
          style: TextStyle(fontWeight: FontWeight.w400),
        )),
      ),
      body: _pageOptions[currentPage],
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          NavigationDestination(icon: Icon(Icons.settings), label: "Settings")
        ],
        onDestinationSelected: (int index) {
          setState(() {
            currentPage = index;
          });
        },
        selectedIndex: currentPage,
      ),
    );
  }
}
