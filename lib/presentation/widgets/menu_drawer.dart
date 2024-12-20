import 'package:flutter/material.dart';
import 'dart:io';
import 'package:get/get.dart';
import 'package:ui_universidades_gp/presentation/controllers/login_controller.dart';
import 'package:ui_universidades_gp/presentation/pages/configuration_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MenuWidget extends StatefulWidget {
  final Function(String) onItemClick;
  const MenuWidget({super.key, required this.onItemClick});

  @override
  // ignore: library_private_types_in_public_api
  _MenuWidgetState createState() => _MenuWidgetState();
}

class _MenuWidgetState extends State<MenuWidget> {
  final LoginController loginController = Get.put(LoginController());
  File? _image;

  Future<void> _showPicker(BuildContext context) async {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Wrap(
              children: <Widget>[
                ListTile(
                  leading: const Icon(Icons.photo_library),
                  title: const Text('Galería'),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.photo_camera),
                  title: const Text('Cámara'),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            ),
          );
        });
  }

  // Función para obtener el nombre del usuario
  Future<String> _ObtenerNombre() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String nombreUsuario = prefs.getString('nombreUsuario') ?? 'Usuario';
    return nombreUsuario;
  }

  // Función para obtener el correo del usuario
  Future<String> _obtenerCorreoUsuario() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('correoUsuario') ?? 'Correo no disponible';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue[900],
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: FutureBuilder<String>(
              future:
                  _ObtenerNombre(), // El método que obtiene el nombre de usuario
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Text('Cargando...');
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else if (snapshot.hasData) {
                  return Text(snapshot.data!); // Mostrar el nombre de usuario
                } else {
                  return Text('Usuario'); // Valor por defecto si no hay datos
                }
              },
            ),
            accountEmail: FutureBuilder<String>(
              future: _obtenerCorreoUsuario(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Text('Cargando correo...');
                } else if (snapshot.hasError) {
                  return Text('Error al cargar el correo');
                } else if (snapshot.hasData) {
                  return Text(snapshot.data!); // Muestra el correo obtenido
                } else {
                  return Text('Correo no disponible');
                }
              },
            ),
            currentAccountPicture: GestureDetector(
              onTap: () {
                _showPicker(context);
              },
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Color.fromARGB(246, 22, 9, 255),
                child: _image != null
                    ? ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.file(
                          _image!,
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                      )
                    : Container(
                        decoration: BoxDecoration(
                            color: Colors.blue[800],
                            borderRadius: BorderRadius.circular(50)),
                        width: 100,
                        height: 100,
                        child: const Icon(
                          Icons.camera_alt,
                          color: Colors.white,
                        ),
                      ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue[900],
            ),
          ),
          ListTile(
            leading: const Icon(Icons.person, color: Colors.white),
            title: const Text(
              'Datos Personales',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () => widget.onItemClick('Datos Personales'),
          ),
          ListTile(
            leading: const Icon(Icons.settings, color: Colors.white),
            title: const Text(
              'Configuración',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ConfigurationScreen()),
              );
            },
          ),
          ListTile(
            leading:
                const Icon(Icons.border_color_outlined, color: Colors.white),
            title: const Text(
              'Formulario',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () => Get.toNamed('/form1'),
          ),
          ListTile(
            leading: const Icon(Icons.info, color: Colors.white),
            title: const Text(
              'Simbología',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Simbología'),
                    content: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 5.0),
                          child: Row(
                            children: [
                              Icon(Icons.home,
                                  color: Colors.blueGrey, size: 24),
                              SizedBox(width: 10),
                              Text('Inicio', style: TextStyle(fontSize: 16)),
                            ],
                          ),
                        ),
                        // Otros elementos de simbología...
                      ],
                    ),
                    actions: <Widget>[
                      TextButton(
                        onPressed: () => Navigator.of(context).pop(),
                        child: const Text('Cerrar'),
                      ),
                    ],
                  );
                },
              );
            },
          ),
          const Spacer(),
          ListTile(
            leading: const Icon(Icons.exit_to_app, color: Colors.red),
            title: const Text(
              'Cerrar Sesión',
              style: TextStyle(color: Color.fromARGB(255, 250, 249, 249)),
            ),
            onTap: loginController.logout,
          ),
        ],
      ),
    );
  }
}
