//Importacion de librerias
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
//routes
import '../../routes/routes_pages.dart';
import '../../routes/routes_widgets.dart';

//Inicio de la clase
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final AdvancedDrawerController _advancedDrawerController =
      AdvancedDrawerController();
  String title = 'Home';
  int backPressCounter = 0;
  Timer? _timer;
  int _selectedIndex = 0;
  bool isSearching = false;
  final TextEditingController _searchController = TextEditingController();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _onItemClick(String item) {
    setState(() {
      _advancedDrawerController.hideDrawer();
    });
  }

  void _handlePop(bool canPop) {
    if (backPressCounter == 0) {
      backPressCounter++;
      Get.snackbar(
        'Atención',
        'Presione nuevamente para salir',
        snackPosition: SnackPosition.BOTTOM,
      );

      _timer = Timer(const Duration(seconds: 2), () {
        backPressCounter = 0;
      });
    } else {
      _timer?.cancel();
      SystemNavigator.pop();
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: true,
      onPopInvoked: (canPop) {
        if (_advancedDrawerController.value.visible) {
          _advancedDrawerController.hideDrawer();
        } else {
          _handlePop(canPop);
        }
      },
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: const SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarIconBrightness: Brightness.dark,
        ),
        child: AdvancedDrawer(
          controller: _advancedDrawerController,
          drawer: MenuWidget(onItemClick: _onItemClick),
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: const Icon(Icons.menu, color: Colors.black),
                onPressed: () => _advancedDrawerController.showDrawer(),
              ),
              title: TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'Buscar...',
                  border: InputBorder.none,
                  hintStyle: TextStyle(color: Colors.grey[600]),
                ),
                style: const TextStyle(color: Colors.black),
                onSubmitted: (value) {
                  //
                },
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.search, color: Colors.black),
                  onPressed: () {
                    //
                  },
                ),
              ],
            ),
            body: _getBodyContent(),
            floatingActionButton: _getFloatingActionButton(),
            bottomNavigationBar: BottomNavBar(
              selectedIndex: _selectedIndex,
              onItemTapped: _onItemTapped,
            ),
          ),
        ),
      ),
    );
  }

  Widget _getBodyContent() {
    switch (_selectedIndex) {
      case 0:
        return  SectionOne(); // Pantalla de
      case 1:
        return const SectionTwo(); // Pantalla de
      case 2:
        return const SectionThree(); // Pantalla de
      case 3:
        return const SectionFour(); // Pantalla de
      default:
        return const SectionFive(); //Pantalla por default
    }
  }

  Widget? _getFloatingActionButton() {
    switch (_selectedIndex) {
      case 0:
        return FloatButton(
          onPressed: () {
            Get.to(() => null,
                transition: Transition.fade,
                duration: const Duration(milliseconds: 500));
          },
          icon: Icons.add,
          backgroundColor: Colors.blue,
        );
      case 1:
        return FloatButton(
          onPressed: () {
            Get.to(() => null,
                transition: Transition.fade,
                duration: const Duration(milliseconds: 500));
          },
          icon: Icons.task,
          backgroundColor: Colors.green,
        );
      default:
        return null; // Si no necesitas ningún FloatingActionButton para otras pantallas
    }
  }
}
