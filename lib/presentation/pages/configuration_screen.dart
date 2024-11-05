import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ConfigurationScreen extends StatefulWidget {
  @override
  _ConfigurationScreenState createState() => _ConfigurationScreenState();
}

class _ConfigurationScreenState extends State<ConfigurationScreen> {
  bool _isDarkMode = false;

  @override
  void initState() {
    super.initState();
    // Verifica si el modo oscuro está habilitado en el sistema
    _isDarkMode = Get.isDarkMode;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuración'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Opción para activar/desactivar el modo oscuro
            ListTile(
              title: Text('Modo Oscuro'),
              trailing: Switch(
                value: _isDarkMode,
                onChanged: (value) {
                  setState(() {
                    _isDarkMode = value;
                    // Cambiar el tema de la aplicación
                    Get.changeThemeMode(
                        value ? ThemeMode.dark : ThemeMode.light);
                  });
                },
              ),
            ),
            // Puedes añadir más opciones aquí
          ],
        ),
      ),
    );
  }
}
