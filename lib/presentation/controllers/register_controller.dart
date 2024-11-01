import 'package:get/get.dart';
import 'package:ui_universidades_gp/providers/usuario_providers.dart';

class RegisterController extends GetxController {
  UsuarioProviders usuarioProv =
      UsuarioProviders(); // Se eliminó el 'new', ya no es necesario en Dart

  Future<Map<String, dynamic>> registrarUsuario(
      String name, String email, String password) async {
    try {
      // Llamar al método de registro del proveedor
      Map<String, dynamic> response =
          await usuarioProv.registrarUsuario(name, email, password);
      return response; // Retorna el resultado del registro
    } catch (e) {
      // Retorna un mapa con el error
      return {'success': false, 'error': e.toString()};
    }
  }

  var isChecked = false.obs;

  void verifyCheckbox() {
    isChecked.value =
        !isChecked.value; // Cambia el valor de isChecked a true o false
  }

  bool isCheckboxAccepted() {
    if (!isChecked.value) {
      Get.snackbar('Error', 'Por favor acepta términos y condiciones');
      return false; // Retorna false si no está aceptado
    }
    return true; // Retorna true si está aceptado
  }
}
