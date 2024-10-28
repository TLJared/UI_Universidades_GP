import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/routes_controllers.dart';

class RegisterView extends StatelessWidget {
  final UsuarioController usuarioController = Get.put(UsuarioController());

  final nombreController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final RegisterController registerController = Get.put(RegisterController());

  RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.grey[200]),
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
                  Icons.person_add,
                  size: 80,
                  color: Colors.cyan, // Cambié el color a azul turquesa
                ),
                SizedBox(height: 20),

                // Título de la pantalla
                Text(
                  'Registro',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.cyan, // Cambié el color a azul turquesa
                  ),
                ),
                SizedBox(height: 20),

                // Campo de nombre
                TextField(
                  controller: nombreController,
                  decoration: InputDecoration(
                    labelText: "Nombre",
                    prefixIcon: Icon(Icons.person),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 20),

                // Campo de email
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: "Email",
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
                    labelText: "Contraseña",
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
                SizedBox(height: 20),

                // Campo de confirmar contraseña
                TextField(
                  controller: confirmPasswordController,
                  decoration: InputDecoration(
                    labelText: "Confirmar Contraseña",
                    prefixIcon: Icon(Icons.lock_outline),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 10),
                // aqui va un checkbox y que diga aceptar terminos condiciones.
                Obx(() => Row(
                      children: [
                        Checkbox(
                          value: registerController.isChecked.value,
                          onChanged: (bool? newValue) {
                            registerController.verifyCheckbox();
                          },
                        ),
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Términos y Condiciones'),
                                  content: SingleChildScrollView(
                                    child: Text(
                                      ' '
                                      ' '
                                      '',
                                    ),
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pop(); // Cerrar el diálogo
                                      },
                                      child: Text('Atras'),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Text(
                            'Aceptar términos y condiciones',
                            style: TextStyle(
                              color: Colors.blue,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                        ),
                      ],
                    )),

                // Obx(() => Row(
                //       children: [
                //         Checkbox(
                //             value: registerController.isChecked.value,
                //             onChanged: (bool? newValue) {
                //               registerController.verifyCheckbox();
                //             }),
                //         Text('Aceptar Terminos y condiciones'),
                //       ],
                //     )),
                SizedBox(height: 30),

                // Botón de registro
                ElevatedButton(
                  onPressed: () async {
                    // Validaciones de los campos
                    if (nombreController.text.isEmpty) {
                      Get.snackbar("Error", "El nombre es obligatorio",
                          snackPosition: SnackPosition.TOP);
                      return;
                    }
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
                    if (confirmPasswordController.text.isEmpty) {
                      Get.snackbar("Error", "Debes confirmar la contraseña",
                          snackPosition: SnackPosition.TOP);
                      return;
                    }
                    if (passwordController.text !=
                        confirmPasswordController.text) {
                      Get.snackbar("Error", "Las contraseñas no coinciden",
                          snackPosition: SnackPosition.TOP);
                      return;
                    }
                    if (!registerController.isCheckboxAccepted()) return;

                    String? errorMessage =
                        await usuarioController.registrarUsuario(
                      nombreController.text,
                      emailController.text,
                      passwordController.text,
                    );

                    if (errorMessage == null) {
                      Get.snackbar('Éxito', 'Usuario registrado con éxito');
                      // Redirige a la pantalla de inicio de sesión
                      Get.offAllNamed(
                          '/loginP'); // Cambié el método a `Get.offAllNamed` para regresar al login
                    } else {
                      Get.snackbar(
                          'Error', errorMessage); // Muestra el mensaje de error
                    }

                    // Limpia los campos
                    nombreController.clear();
                    emailController.clear();
                    passwordController.clear();
                    confirmPasswordController.clear();
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 80),
                    backgroundColor:
                        Colors.cyan, // Cambié el color a azul turquesa
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    "Registrar",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white, // Texto en color blanco
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
