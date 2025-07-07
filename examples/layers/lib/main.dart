import 'package:flutter/material.dart';

void main() {
  runApp(const IRISApp());
}

class IRISApp extends StatelessWidget {
  const IRISApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IRIS - Indian Railways Intelligent System',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home: const IRISHomePage(),
    );
  }
}

class IRISHomePage extends StatefulWidget {
  const IRISHomePage({super.key});

  @override
  State<IRISHomePage> createState() => _IRISHomePageState();
}

class _IRISHomePageState extends State<IRISHomePage> {
  int _selectedIndex = 0;

  static final List<Widget> _pages = <Widget>[
    const PassengerPage(),
    const AssistantPage(),
    const AdminPage(),
  ];

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('IRIS - Indian Railways')),
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.train),
            label: 'Passenger',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Assistant',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.admin_panel_settings),
            label: 'Admin',
          ),
        ],
      ),
    );
  }
}

// Dummy page widgets

class PassengerPage extends StatelessWidget {
  const PassengerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Passenger Experience Page', style: TextStyle(fontSize: 24)));
  }
}

class AssistantPage extends StatelessWidget {
  const AssistantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('AI Assistant Page', style: TextStyle(fontSize: 24)));
  }
}

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('Admin Dashboard Page', style: TextStyle(fontSize: 24)));
  }
}
