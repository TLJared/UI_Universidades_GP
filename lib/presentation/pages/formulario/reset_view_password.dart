import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResetPasswordView extends StatelessWidget {
  final emailController = TextEditingController();

  ResetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        title: Text(
          'Restablecer Contraseña',
          style: TextStyle(color: Colors.cyan),
        ),
        iconTheme: IconThemeData(color: Colors.cyan),
        elevation: 0,
      ),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.lock_reset,
                  size: 80,
                  color: Colors.cyan,
                ),
                SizedBox(height: 20),
                Text(
                  '¿Olvidaste tu Contraseña?',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.cyan,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 20),
                Text(
                  'Ingresa tu correo electrónico para recibir un enlace de recuperación.',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey[700],
                  ),
                  textAlign: TextAlign.center,
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
                  keyboardType: TextInputType.emailAddress,
                ),
                SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    // Conectar con tu API aquí.
                    Get.snackbar(
                      "En construcción",
                      "Funcionalidad no implementada aún.",
                      snackPosition: SnackPosition.TOP,
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                    backgroundColor: Colors.cyan,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Enviar Enlace',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {
                    Get.back();
                  },
                  child: Text(
                    "Regresar a Inicio de Sesión",
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
