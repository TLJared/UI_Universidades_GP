import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_universidades_gp/presentation/controllers/usuario_controller.dart';

class LoginView extends StatelessWidget {
  final UsuarioController usuarioController = Get.put(UsuarioController());

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200], // Fondo más claro
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Icono del logo de la app
                Icon(
                  Icons.school,
                  size: 80,
                  color: Colors.cyan, // Cambié el color a turquesa
                ),
                SizedBox(height: 20),

                // Título de la pantalla
                Text(
                  'Iniciar Sesión',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.cyan, // Cambié el color a turquesa
                  ),
                ),
                SizedBox(height: 20),

                // Campo de email
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    prefixIcon: Icon(Icons.email),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Campo de contraseña
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    prefixIcon: Icon(Icons.lock),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 30),

                // Botón de inicio de sesión
                ElevatedButton(
                  onPressed: () async {
                    // Validaciones de los campos
                    if (emailController.text.isEmpty) {
                      Get.snackbar("Error", "El email es obligatorio",
                          snackPosition: SnackPosition.TOP);
                      return;
                    }
                    if (passwordController.text.isEmpty) {
                      Get.snackbar("Error", "La contraseña es obligatoria",
                          snackPosition: SnackPosition.TOP);
                      return;
                    }

                    String email = emailController.text;
                    String password = passwordController.text;

                    String? errorMessage =
                        await usuarioController.login(email, password);
                    if (errorMessage == null) {
                      Get.toNamed(
                          '/home_screen'); // Navegar a la pantalla principal
                    } else {
                      Get.snackbar('Error', errorMessage,
                          snackPosition:
                              SnackPosition.TOP); // Mostrar mensaje de error
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                    backgroundColor: Colors.cyan, // Cambié el color a turquesa
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Iniciar Sesión',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white, // Texto en color blanco
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Botón de registro
                TextButton(
                  onPressed: () {
                    Get.toNamed('/registerP');
                  },
                  child: Text(
                    "¿No tienes cuenta? Regístrate",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.cyan, // Cambié el color a turquesa
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
