import 'package:get/get.dart';

class RegisterController extends GetxController {
  var isChecked = false.obs;

  void verifyCheckbox() {
    isChecked.value =
        !isChecked.value; //Cambia el valor de isChecked a true o false
  }

  bool isCheckboxAccepted() {
    if (!isChecked.value) {
      Get.snackbar('Error', 'Pro favor acepta terminos y condiciones');
      return false;
    }
    return true;
  }
}
