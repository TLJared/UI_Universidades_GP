import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_universidades_gp/datosApp/services/connectivity_services.dart';
import 'package:ui_universidades_gp/preferencias_usuario/preferencias_usuario.dart';
import 'package:ui_universidades_gp/presentation/pages/formulario/form_university_administrative_data.dart';
import 'package:ui_universidades_gp/presentation/pages/formulario/form_university_inf_contact.dart';
import 'package:ui_universidades_gp/presentation/pages/formulario/form_university_inf_generalOne.dart';
import 'package:ui_universidades_gp/presentation/pages/formulario/login_view.dart';
import 'package:ui_universidades_gp/presentation/pages/formulario/register_view.dart';
import 'package:ui_universidades_gp/presentation/pages/home_screen.dart';
import 'package:ui_universidades_gp/presentation/pages/login_screen.dart';
import 'package:ui_universidades_gp/presentation/pages/welcome.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart'; // Este archivo se genera con flutterfire_cli
import 'package:ui_universidades_gp/presentation/pages/configuration_screen.dart'; // Importa la pantalla de configuración

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();
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
      theme: ThemeData.light(), // Tema claro
      darkTheme: ThemeData.dark(), // Tema oscuro
      themeMode: ThemeMode
          .system, // Cambiar según el sistema o la elección del usuario
      initialRoute: '/',
      getPages: [
        GetPage(
          name: '/',
          page: () => const Welcome(),
        ),
        GetPage(
            name: '/home_screen',
            page: () => HomeScreen(),
            transition: Transition.circularReveal),
        GetPage(
            name: '/form1',
            page: () => UniversityInfoView(),
            transition: Transition.zoom),
        GetPage(
            name: '/form2',
            page: () => ContactInfoView(),
            transition: Transition.size),
        GetPage(
            name: '/administrative_data',
            page: () => AdminDataView(),
            transition: Transition.downToUp),
        GetPage(
            name: '/login',
            page: () => LoginScreen(),
            transition: Transition.circularReveal),
        GetPage(
            name: '/loginP',
            page: () => LoginView(),
            transition: Transition.topLevel),
        GetPage(
            name: '/registerP',
            page: () => RegisterView(),
            transition: Transition.native),
        GetPage(
            name: '/configuration', // Ruta para la pantalla de configuración
            page: () => ConfigurationScreen(),
            transition: Transition.fadeIn),
      ],
    );
  }
}
