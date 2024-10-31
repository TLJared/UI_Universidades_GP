import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:ui_universidades_gp/datosApp/services/connectivity_services.dart';
import 'package:ui_universidades_gp/presentation/widgets/menu_drawer.dart';

class SectionOne extends StatelessWidget {
  final ConnectivityService connectivityService =
      Get.find<ConnectivityService>();
  SectionOne({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() {
        if (!connectivityService.isConnected.value) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.wifi_off,
                  color: Colors.red,
                ),
                SizedBox(height: 20),
                Text(
                  'Ya Paga tu internet',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        } else {
          //Despues del return agregaremos un body y demas para que se muestre, con los datos creados desde firebase.
          return Scaffold(
              body: Center(
            child: Text('Si hay internet'),
          ));
        }
      }),
    );
  }
}
