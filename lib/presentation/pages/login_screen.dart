import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/login_controller.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final LoginController controller = Get.put(LoginController());

    return Scaffold(
      resizeToAvoidBottomInset:
          false, // Evita que el contenido se ajuste cuando el teclado aparece
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(110.0),
                  child: Center(
                    child: SizedBox(
                      width: 200.0,
                      height: 100.0,
                      child: Transform.scale(
                        scale: 2.0,
                        child: Image.asset(''),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Obx(
                        () => TextField(
                          decoration: InputDecoration(
                            border: const OutlineInputBorder(),
                            labelText: 'Ingresa tu correo/usuario',
                            hintText: 'example@live.com',
                            errorText: controller.emailError.value.isEmpty
                                ? null
                                : controller.emailError.value,
                          ),
                          onChanged: (value) {
                            controller.email.value = value;
                            controller.emailError.value =
                                ''; // Clear error on input change
                          },
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 15.0,
                        right: 15.0,
                        top: 45.0,
                        bottom: 0,
                      ),
                      child: Obx(
                        () => TextField(
                          obscureText: controller.isPasswordHidden.value,
                          decoration: InputDecoration(
                              border: const OutlineInputBorder(),
                              labelText: 'Ingresa tu contraseña',
                              hintText: '***********',
                              errorText: controller.passwordError.value.isEmpty
                                  ? null
                                  : controller.passwordError.value,
                              suffixIcon: IconButton(
                                  onPressed: () {
                                    controller.togglePasswordVisibility();
                                  },
                                  icon: Icon(controller.isPasswordHidden.value
                                      ? Icons.visibility_off
                                      : Icons.visibility))),
                          onChanged: (value) {
                            controller.password.value = value;
                            controller.passwordError.value =
                                ''; // Clear error on input change
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          const Text('¿Se te olvidó la contraseña? '),
                          ElevatedButton(
                            onPressed: () {
                              Get.toNamed(''); // pendiente
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 29, 75, 109),
                            ),
                            child: const Text(
                              'Solicitar aquí!',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 65,
                  width: 360,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: ElevatedButton(
                      onPressed: () {
                        controller.login();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 29, 75, 109),
                      ),
                      child: const Text(
                        'Ingresar',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              // child: Text(
              //   '',
              //   style: TextStyle(
              //     color: Colors.grey[600],
              //     fontSize: 14,
              //   ),
              // ),
            ),
          ),
        ],
      ),
    );
  }
}
