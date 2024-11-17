import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_universidades_gp/datosApp/services/connectivity_services.dart';
import 'package:ui_universidades_gp/presentation/controllers/universities_controller.dart';
import 'package:ui_universidades_gp/presentation/pages/details_university.dart';
import 'package:ui_universidades_gp/presentation/widgets/menu_drawer.dart';

class SectionOne extends StatelessWidget {
  final ConnectivityService connectivityService =
      Get.find<ConnectivityService>();
  final ItemsUniController uniController = Get.put(ItemsUniController());
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
                  color: Colors.grey,
                  size: 80,
                ),
                SizedBox(height: 20),
                Text(
                  'No hay conexion a internet',
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
          //Despues del return agregaremos un body y demas para que se muestre, con los datos creados desde firebase, en este caso todos son datos locales.
          return Scaffold(
              body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: uniController.UniversitiesItems.map((item) {
                return Center(
                  child: InkWell(
                      onTap: () {
                        Get.to(() => UniversityDetailView(item: item));
                      },
                      child: Card(
                        margin: EdgeInsets.all(10.0),
                        elevation: 10,
                        shadowColor: Color.fromARGB(121, 33, 58, 222),
                        child: Container(
                          width: 300,
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Image.network(
                                item.ImageURL,
                                width: 100,
                                height: 100,
                                fit: BoxFit.cover,
                              ),
                              SizedBox(height: 8),
                              Text(
                                item.name,
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              SizedBox(height: 4),
                              Text(
                                item.description,
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 10),
                                textAlign: TextAlign.center,
                              ),
                            ],
                          ),
                        ),
                      )),
                );
              }).toList(),
            ),
          ));
        }
      }),
    );
  }
}
