import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_universidades_gp/providers/usuario_providers.dart';
import '../../../routes/routes_controllers.dart';
import 'package:url_launcher/url_launcher.dart';

class RegisterView extends StatelessWidget {
  final UsuarioProviders usuarioController = Get.put(UsuarioProviders());
  final nombreController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final RegisterController registerController = Get.put(RegisterController());

  RegisterView({super.key});

  // Método para validar el email
  bool isValidEmail(String email) {
    String pattern =
        r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'; // Expresión regular para validar el email
    RegExp regex = RegExp(pattern);
    return regex.hasMatch(email);
  }

  // Método para lanzar la URL de términos y condiciones
  Future<void> _launchTermsURL() async {
    final Uri url = Uri.parse(
        "https://cemanred.com/politicas.html"); // URL de términos y condiciones
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw 'No se pudo abrir $url';
    }
  }

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
                  Icons.person_add,
                  size: 80,
                  color: Colors.cyan,
                ),
                SizedBox(height: 20),
                Text(
                  'Registro',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.cyan,
                  ),
                ),
                SizedBox(height: 20),
                _buildTextField(nombreController, "Nombre", Icons.person),
                SizedBox(height: 20),
                _buildTextField(emailController, "Email", Icons.email),
                SizedBox(height: 20),
                _buildTextField(passwordController, "Contraseña", Icons.lock,
                    isObscured: true),
                SizedBox(height: 20),
                _buildTextField(confirmPasswordController,
                    "Confirmar Contraseña", Icons.lock_outline,
                    isObscured: true),
                SizedBox(height: 10),
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
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Al usar UI Universidades GP, aceptas estos términos: \n\n'
                                          '1.- Datos de Usuario: Recopilamos información personal para mejorar el servicio. Tus datos se tratan con confidencialidad.\n'
                                          '2.- Seguridad: Tomamos medidas de protección, aunque no podemos garantizar seguridad absoluta.\n'
                                          '3.- Propiedad: El contenido de la aplicación es propiedad de UI Universidades o sus licenciantes.\n'
                                          '4.- Responsabilidad: No somos responsables de daños derivados del uso de la aplicación.\n'
                                          '5.- Cambios: Podemos actualizar estos términos, y te notificaremos sobre ellos.\n\n'
                                          'Para más información, consulta los términos y condiciones completos en nuestra página web.',
                                          textAlign: TextAlign.left,
                                        ),
                                        SizedBox(height: 20),
                                        GestureDetector(
                                          onTap: _launchTermsURL,
                                          child: Text(
                                            'Más información',
                                            style: TextStyle(
                                              color: Colors.blue,
                                              decoration:
                                                  TextDecoration.underline,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Atrás'),
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
                SizedBox(height: 30),
                _buildRegisterButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
      TextEditingController controller, String labelText, IconData icon,
      {bool isObscured = false}) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(icon),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
      obscureText: isObscured,
    );
  }

  Widget _buildRegisterButton(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        // Validaciones de los campos
        if (nombreController.text.isEmpty) {
          Get.snackbar("Error", "El nombre es obligatorio",
              snackPosition: SnackPosition.TOP);
          return;
        }
        if (emailController.text.isEmpty ||
            !isValidEmail(emailController.text)) {
          Get.snackbar("Error", "El email debe ser válido",
              snackPosition: SnackPosition.TOP);
          return;
        }
        if (passwordController.text.isEmpty) {
          Get.snackbar("Error", "La contraseña es obligatoria",
              snackPosition: SnackPosition.TOP);
          return;
        }
        if (passwordController.text.length < 6) {
          Get.snackbar(
              "Error", "La contraseña debe tener al menos 6 caracteres",
              snackPosition: SnackPosition.TOP);
          return;
        }
        if (confirmPasswordController.text.isEmpty) {
          Get.snackbar("Error", "Debes confirmar la contraseña",
              snackPosition: SnackPosition.TOP);
          return;
        }
        if (passwordController.text != confirmPasswordController.text) {
          Get.snackbar("Error", "Las contraseñas no coinciden",
              snackPosition: SnackPosition.TOP);
          return;
        }
        if (!registerController.isCheckboxAccepted()) {
          Get.snackbar("Error", "Debes aceptar los términos y condiciones",
              snackPosition: SnackPosition.TOP);
          return;
        }

        // Registrar usuario
        Map<String, dynamic> result = await usuarioController.registrarUsuario(
          nombreController.text,
          emailController.text,
          passwordController.text,
        );

        if (result['success']) {
          Get.snackbar('Éxito', 'Usuario registrado con éxito');
          Get.offAllNamed('/loginP');
          nombreController.clear();
          emailController.clear();
          passwordController.clear();
          confirmPasswordController.clear();
        } else {
          Get.snackbar('Error', result['error']);
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
        "Registrar",
        style: TextStyle(
          fontSize: 16,
          color: Colors.white,
        ),
      ),
    );
  }
}
