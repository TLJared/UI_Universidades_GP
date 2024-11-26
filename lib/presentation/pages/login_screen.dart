import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../routes/routes_controllers.dart';
import '../controllers/login_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.put(LoginController());

    // Controladores para los campos de texto
    final TextEditingController nombreController = TextEditingController();
    final TextEditingController correoController = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset:
          false, // Evita que el contenido se ajuste cuando el teclado aparece
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(110.0),
                  child: Center(
                    child: SizedBox(
                      width: 200.0,
                      height: 100.0,
                      child: Transform.scale(
                        scale: 2.0,
                        child: Image.asset(''),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    // Campo de texto para nombre
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        controller: nombreController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Ingresa tu nombre',
                          hintText: 'Ejemplo: Juan Pérez',
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Campo de texto para correo
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextField(
                        controller: correoController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Ingresa tu correo',
                          hintText: 'example@live.com',
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Botón para iniciar sesión
                    SizedBox(
                      height: 65,
                      width: 360,
                      child: ElevatedButton(
                        onPressed: () {
                          final nombre = nombreController.text.trim();
                          final correo = correoController.text.trim();

                          if (nombre.isEmpty || correo.isEmpty) {
                            Get.snackbar(
                              'Error',
                              'Por favor, completa todos los campos',
                              snackPosition: SnackPosition.BOTTOM,
                            );
                          } else {
                            controller.login(nombre, correo);
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 29, 75, 109),
                        ),
                        child: const Text(
                          'Ingresar',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
