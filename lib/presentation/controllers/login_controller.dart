import 'package:get/get.dart';
import 'package:ui_universidades_gp/presentation/pages/formulario/login_view.dart';
import '../../config/validations.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  // Variables de email y password
  var email = ''.obs;
  var password = ''.obs;
  var emailError = ''.obs;
  var passwordError = ''.obs;
  var isPasswordHidden = true.obs;
  var nombreUsuario = ''.obs;
  var correoUsuario = ''.obs;

  String? validateEmail(String value) {
    return FormValidators.validateEmail(value);
  }

  String? validatePassword(String value) {
    return FormValidators.validatePassword(value);
  }

  Future<void> login(String nombre, String correo) async {
    // Guardar los datos en SharedPreferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('nombreUsuario', nombre);
    await prefs.setString('correoUsuario', correo);

    // Validar correo y contraseña
    emailError.value = validateEmail(email.value) ?? '';
    passwordError.value = validatePassword(password.value) ?? '';

    if (emailError.value.isEmpty && passwordError.value.isEmpty) {
      Get.snackbar('Éxito', 'El logueo se ha realizado de forma exitosa');
      Get.offAllNamed('/form1');
    } else {
      Get.snackbar('Error', 'El logueo se ha validado erróneamente');
    }
  }

  Future<void> logout() async {
    // Eliminar los datos de SharedPreferences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.getString('nombreUsuario');
    await prefs.getString('correoUsuario');

    // Limpiar los valores en el controlador
    //nombreUsuario.value = '';
    // correoUsuario.value = '';

    // Redirigir al login
    Get.offAll(() => LoginView(), arguments: null, transition: Transition.fade);
  }

  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }
}
