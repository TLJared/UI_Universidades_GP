import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController
    with SingleGetTickerProviderMixin {
  late AnimationController animationController;
  late Animation<double> fadeInAnimation;
  late Animation<Offset> slideUpAnimation;
  late Animation<double> scaleAnimation;

  @override
  void onInit() {
    super.onInit();

    // Configurar el AnimationController
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );

    // Animación de desvanecimiento (Fade In)
    fadeInAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeIn),
    );

    // Animación de desplazamiento (Slide Up)
    slideUpAnimation =
        Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeOut),
    );

    // Animación de escala (Scale) para el botón
    scaleAnimation = Tween<double>(begin: 1.0, end: 0.9).animate(
      CurvedAnimation(parent: animationController, curve: Curves.easeInOut),
    );

    // Iniciar las animaciones
    animationController.forward();
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }

  // Método para reiniciar la animación
  void restartAnimation() {
    animationController.reset();
    animationController.forward();
  }
}
