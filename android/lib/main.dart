import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_universidades_gp/datosApp/services/connectivity_services.dart';
import 'package:ui_universidades_gp/presentation/pages/formulario/form_university_administrative_data.dart';
import 'package:ui_universidades_gp/presentation/pages/formulario/form_university_inf_contact.dart';
import 'package:ui_universidades_gp/presentation/pages/formulario/form_university_inf_generalOne.dart';
import 'package:ui_universidades_gp/presentation/pages/home_screen.dart';
import 'package:ui_universidades_gp/presentation/pages/login_screen.dart';
import 'package:ui_universidades_gp/presentation/pages/welcome.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(ConnectivityService());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'UI UNIVERSIDADES GP',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const Welcome(),
        ),
        GetPage(
            name: '/home_screen',
            page: () => const HomeScreen(),
            transition: Transition.circularReveal),
        GetPage(
            name: '/form1',
            page: () => const UniversityInfoView(),
            transition: Transition.zoom),
        GetPage(
            name: '/form2',
            page: () => const ContactInfoView(),
            transition: Transition.size),
        GetPage(
            name: '/administrative_data',
            page: () => AdminDataView(),
            transition: Transition.downToUp),
        GetPage(
            name: '/login',
            page: () => const LoginScreen(),
            transition: Transition.circularReveal),
      ],
    );
  }
}
