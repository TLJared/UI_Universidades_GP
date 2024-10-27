import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_universidades_gp/presentation/controllers/welcome_controller.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    // Inyectar el controlador de GetX
    final WelcomeController controller = Get.put(WelcomeController());

    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
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
                                color: Color.fromARGB(255, 255, 255, 255)),
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
                        // Reiniciar la animación de escala cuando se presiona
                        controller.restartAnimation();
                        Get.toNamed('/loginP');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.arrow_circle_right_sharp,
                              color: Color.fromARGB(255, 15, 40, 229)),
                          SizedBox(
                            width: 8.0,
                          ),
                          Text(
                            'Siguiente',
                            style: TextStyle(
                                color: const Color.fromARGB(255, 0, 0, 0)),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

























//import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class Welcome extends StatefulWidget {
//   const Welcome({super.key});

//   @override
//   _WelcomeState createState() => _WelcomeState();
// }

// class _WelcomeState extends State<Welcome> with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _fadeInAnimation;
//   late Animation<Offset> _slideUpAnimation;
//   late Animation<double> _scaleAnimation;

//   @override
//   void initState() {
//     super.initState();

//     // Configurar el AnimationController
//     _controller = AnimationController(
//       vsync: this,
//       duration: const Duration(seconds: 2),
//     );

//     // Animación de desvanecimiento (Fade In)
//     _fadeInAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
//       CurvedAnimation(parent: _controller, curve: Curves.easeIn),
//     );

//     // Animación de desplazamiento (Slide Up)
//     _slideUpAnimation =
//         Tween<Offset>(begin: const Offset(0, 1), end: Offset.zero).animate(
//       CurvedAnimation(parent: _controller, curve: Curves.easeOut),
//     );

//     // Animación de escala (Scale) para el botón
//     _scaleAnimation = Tween<double>(begin: 1.0, end: 1.2).animate(
//       CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
//     );

//     // Iniciar las animaciones
//     _controller.forward();
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueAccent,
//       body: Stack(
//         children: [
//           SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 Padding(
//                   padding:
//                       const EdgeInsets.symmetric(vertical: 90, horizontal: 30),
//                   child: FadeTransition(
//                     opacity: _fadeInAnimation,
//                     child: const Center(
//                       child: SizedBox(
//                         width: 1000.0,
//                         height: 200,
//                         child: Text(
//                           'Bienvenidos a UI UNIVERSIDADES GP',
//                           style: TextStyle(fontSize: 30.0, color: Colors.white),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 200.0),
//                 SlideTransition(
//                   position: _slideUpAnimation,
//                   child: ScaleTransition(
//                     scale: _scaleAnimation,
//                     child: ElevatedButton(
//                       onPressed: () {
//                         // Reiniciar la animación de escala cuando se presiona
//                         _controller.reset();
//                         _controller.forward();
//                         Get.toNamed('/loginP');
//                       },
//                       child: const Icon(
//                         Icons.arrow_circle_right_sharp,
//                         color: Colors.blueAccent,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }





// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class Welcome extends StatelessWidget {
//   const Welcome({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.blueAccent,
//       body: Stack(
//         children: [
//           SingleChildScrollView(
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 const Padding(
//                   padding: EdgeInsets.symmetric(vertical: 90, horizontal: 30),
//                   child: Center(
//                     child: SizedBox(
//                       width: 1000.0,
//                       height: 200,
//                       child: Text(
//                         'Bienvenidos a UI UNIVERSIDADES GP',
//                         style: TextStyle(fontSize: 30.0, color: Colors.white),
//                       ),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 200.0),
//                 ElevatedButton(
//                     //onPressed: () => Get.toNamed('/form1'),
//                     onPressed: () => Get.toNamed('/loginP'),
//                     child: const Icon(Icons.arrow_circle_right_sharp,
//                         color: Colors.blueAccent))
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
