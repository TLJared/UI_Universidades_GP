import 'package:get/get.dart';
import 'package:ui_universidades_gp/providers/usuario_providers.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RegisterController extends GetxController {
  UsuarioProviders usuarioProv = UsuarioProviders();

  var isChecked = false.obs;

  Future<Map<String, dynamic>> registrarUsuario(
      String name, String email, String password) async {
    try {
      // Llamar al método de registro del proveedor
      Map<String, dynamic> response =
          await usuarioProv.registrarUsuario(name, email, password);

      if (response['success'] == true) {
        // Guardar el nombre del usuario en SharedPreferences si el registro es exitoso
        await _guardarNombreUsuario(name);
        await _guardarCorreoUsuario(email);
      }

      return response; // Retorna el resultado del registro
    } catch (e) {
      return {'success': false, 'error': e.toString()}; // Retorna el error
    }
  }

  void verifyCheckbox() {
    isChecked.value = !isChecked.value;
  }

  bool isCheckboxAccepted() {
    if (!isChecked.value) {
      Get.snackbar('Error', 'Por favor acepta términos y condiciones');
      return false;
    }
    return true;
  }

  // Método para guardar el nombre del usuario en SharedPreferences
  Future<void> _guardarNombreUsuario(String nombre) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('nombreUsuario', nombre);
  }

  Future<void> _guardarCorreoUsuario(String correo) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('correoUsuario', correo);
  }
}
