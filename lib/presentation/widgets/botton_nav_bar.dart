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
          icon: Icon(Icons.school_outlined),
          label: 'Universidades',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.apartment_sharp),
          label: 'Departamentos',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.location_on),
          label: 'Cerca de mi',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people_alt),
          label: 'Creditos',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: Colors.blue,
      unselectedItemColor: Colors.grey,
      onTap: onItemTapped,
    );
  }
}
