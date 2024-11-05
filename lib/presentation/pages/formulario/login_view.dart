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
      appBar: AppBar(backgroundColor: Colors.grey[200]),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.school,
                  size: 80,
                  color: Colors.cyan,
                ),
                SizedBox(height: 20),
                Text(
                  'Iniciar Sesión',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.cyan,
                  ),
                ),
                SizedBox(height: 20),
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
                  ElevatedButton(
  onPressed: () async {
    // Validaciones de los campos
    if (emailController.text.isEmpty) {
      Get.snackbar("Error", "El email es obligatorio", snackPosition: SnackPosition.TOP);
      return;
    }
    if (passwordController.text.isEmpty) {
      Get.snackbar("Error", "La contraseña es obligatoria", snackPosition: SnackPosition.TOP);
      return;
    }

    String email = emailController.text;
    String password = passwordController.text;

    // Intenta iniciar sesión
    Map<String, dynamic> result = await usuarioController.login(email, password);

    if (result['success']) {
      String nombreUsuario = result['nombre'] ?? 'Usuario';

      // Navega a la pantalla principal y pasa el nombre del usuario
      Get.offNamed('/home_screen', arguments: {'nombre': nombreUsuario});
    } else {
      // Muestra el mensaje de error devuelto
      Get.snackbar('Error', result['error'], snackPosition: SnackPosition.TOP);
    }
  },
  style: ElevatedButton.styleFrom(
    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
    backgroundColor: Colors.cyan,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
  ),
  child: Text(
    'Iniciar Sesión',
    style: TextStyle(
      fontSize: 16,
      color: Colors.white,
    ),
  ),
),

  

                SizedBox(height: 20),
                TextButton(
                  onPressed: () {
                    Get.toNamed('/registerP');
                  },
                  child: Text(
                    "¿No tienes cuenta? Regístrate",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.cyan,
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
