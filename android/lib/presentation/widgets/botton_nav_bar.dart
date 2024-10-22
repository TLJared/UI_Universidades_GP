import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const BottomNavBar(
      {super.key, required this.selectedIndex, required this.onItemTapped});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.account_tree_outlined),
          label: 'Universidades',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.task),
          label: 'Costos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people_outlined),
          label: 'opcion 1',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings_suggest_outlined),
          label: 'opcion 2',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      onTap: onItemTapped,
    );
  }
}
