import 'package:get/get.dart';
import 'package:ui_universidades_gp/presentation/pages/formulario/login_view.dart';
import '../../config/validations.dart';

// La clase LoginController extiende a la clase GetxController
class LoginController extends GetxController {
  // Definimos las variables para el email y la contraseña
  var email = ''.obs;
  var password = ''.obs;
  var emailError = ''.obs;
  var passwordError = ''.obs;
  var isPasswordHidden = true.obs;

  String? validateEmail(String value) {
    return FormValidators.validateEmail(value);
  }

  String? validatePassword(String value) {
    return FormValidators.validatePassword(value);
  }

  void login() {
    emailError.value = validateEmail(email.value) ?? '';
    passwordError.value = validatePassword(password.value) ?? '';

    if (emailError.value.isEmpty && passwordError.value.isEmpty) {
      Get.snackbar('Exito', 'El logueo se ha realizado de forma exitosa');
      Get.offAllNamed('/form1');
    } else {
      Get.snackbar('Error', 'El logueo se ha validado erroneamente');
    }
  }

  void logout() {
    Get.offAll(() => LoginView(), arguments: null, transition: Transition.fade);
  }

  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }
}
