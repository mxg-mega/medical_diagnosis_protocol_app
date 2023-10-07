import 'package:flutter/material.dart';
import 'package:medical_diagnosis_protocol_app/pages/guide_page.dart';
import 'package:medical_diagnosis_protocol_app/pages/protocols_page.dart';
import 'package:medical_diagnosis_protocol_app/pages/settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  // final String title;

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  static final List<Page> _pages = [
    Page(
      pageName: "Protocols",
      pageContent: const Protocols(),
    ),
    Page(
      pageName: "Guide",
      pageContent: const GuidePage(),
    ),
    Page(
      pageName: "Settings",
      pageContent: const SettingsPage(),
    ),
  ];

  final List<BottomNavigationBarItem> _navigationItems = const [
    BottomNavigationBarItem(
      icon: Icon(Icons.description),
      label: "Protocols",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.book),
      label: "Guide",
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.settings),
      label: "Settings",
    ),
  ];

  void _onTappedItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          _pages[_selectedIndex].pageName,
          // style: TextStyle(color: Colors.blue.shade100),
        ),
        centerTitle: true,
        elevation: 0.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(50),
          ),
        ),
        toolbarHeight: 100,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: _pages[_selectedIndex].pageContent,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'New Protocol',
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0.0,
        items: _navigationItems,
        onTap: _onTappedItem,
        currentIndex: _selectedIndex,
      ),
    );
  }
}

class Page {
  String pageName;
  Widget pageContent;
  Page({required this.pageName, required this.pageContent});

  Widget getPageContent() {
    return pageContent;
  }
}
