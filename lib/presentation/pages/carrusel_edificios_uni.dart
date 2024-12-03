import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_universidades_gp/presentation/controllers/universities_controller.dart';

class UniversityImagesView extends StatelessWidget {
  final ItemsUniController controller = Get.put(ItemsUniController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Departamentos'),
      ),
      body: Column(
        children: [
          // Slider de imágenes
          Expanded(
            flex: 3,
            child: Obx(() {
              return PageView.builder(
                controller: PageController(viewportFraction: 0.9),
                onPageChanged: (index) {
                  // Actualiza el índice actual en el controlador
                  controller.updateIndex(index);
                },
                itemCount: controller.UniversitiesItems[0].imageDepartamentos
                    .length, // Total de imágenes
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(15.0),
                      child: Image.network(
                        controller
                            .UniversitiesItems[0].imageDepartamentos[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
              );
            }),
          ),

          // Descripción de la imagen
          Expanded(
            flex: 1,
            child: Obx(() {
              return Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  controller.UniversitiesItems[0].descriptionDepartamentos[
                      controller
                          .currentIndex.value], // Muestra descripción actual
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
