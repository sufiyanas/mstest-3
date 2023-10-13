import 'package:flutter/material.dart';
import 'package:ms_test_3/const.dart';
import 'package:ms_test_3/view%20/account_screen.dart';
import 'package:ms_test_3/view%20/enqiery_screen.dart';
import 'package:ms_test_3/view%20/history_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _screens = [
    const EnqieryScreen(),
    const Historyscreen(),
    const AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        children: _screens,
        index: _selectedIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.phone_in_talk_rounded),
            label: 'Enquiry',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description),
            label: 'History',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sentiment_satisfied),
            label: 'Account',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: primaryBlue,
        onTap: _onItemTapped,
      ),
    );
  }
}
