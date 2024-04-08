import 'package:flutter/material.dart';

class BottomNavigationBarTemplate extends StatefulWidget {
  const BottomNavigationBarTemplate({super.key});

  @override
  State<BottomNavigationBarTemplate> createState() =>
      _BottomNavigationBarTemplateState();
}

class _BottomNavigationBarTemplateState extends State<BottomNavigationBarTemplate> {
  int _currentIndex = 0;
  void _onTapHandler(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: _onTapHandler,
      type: BottomNavigationBarType.fixed,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.history),
          label: 'History',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          label: 'List',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'Profile',
        ),
      ],
    );
  }
}
