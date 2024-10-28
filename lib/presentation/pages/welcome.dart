import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_universidades_gp/presentation/controllers/welcome_controller.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    // Se crea una instancia de WelcomeController usando GetX para la gestión de estado.
    final WelcomeController controller = Get.put(WelcomeController());

    return Scaffold(
      body: Container(
        // Aseguramos que el contenedor ocupe toda la altura de la pantalla.
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.blue, Colors.purple],
          ),
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Texto de bienvenida con animación de opacidad.
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 90, horizontal: 30),
                  child: FadeTransition(
                    opacity: controller.fadeInAnimation,
                    child: const Center(
                      child: SizedBox(
                        width: 1000.0,
                        height: 200,
                        child: Center(
                          child: Text(
                            'Bienvenidos a UI Universidades GP',
                            style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 200.0),
                SlideTransition(
                  position: controller.slideUpAnimation,
                  child: ScaleTransition(
                    scale: controller.scaleAnimation,
                    child: ElevatedButton(
                      onPressed: () {
                        controller.restartAnimation();
                        Get.toNamed('/loginP');
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.arrow_circle_right_sharp,
                              color: Colors.blue),
                          SizedBox(width: 8.0),
                          Text(
                            'Siguiente',
                            style: TextStyle(color: Colors.blue, fontSize: 18),
                          ),
                        ],
                      ),
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
