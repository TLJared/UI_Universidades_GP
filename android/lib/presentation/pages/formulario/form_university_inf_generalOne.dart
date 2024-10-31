import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/university_ccontroller.dart';

class UniversityInfoView extends StatelessWidget {
  const UniversityInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    final UniversityController controller = Get.put(UniversityController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Información General'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Navegación hacia atrás
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Nombre de la universidad:'),
            TextField(
              onChanged: (value) => controller.universityName.value = value,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Siglas:'),
            TextField(
              onChanged: (value) => controller.siglas.value = value,
              decoration: const InputDecoration(
                hintText: 'Ejemplo: UEEB',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Tipo de universidad:'),
            Obx(() {
              return DropdownButtonFormField<String>(
                value: controller.selectedTipo.value.isEmpty
                    ? null
                    : controller.selectedTipo.value,
                items: controller.tiposUniversidad.map((String tipo) {
                  return DropdownMenuItem<String>(
                    value: tipo,
                    child: Text(tipo),
                  );
                }).toList(),
                onChanged: (value) => controller.selectedTipo.value = value!,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              );
            }),
            const SizedBox(height: 16),
            const Text('Fecha de fundación:'),
            Row(
              children: [
                Obx(() {
                  return Text(
                    "${controller.fechaFundacion.value.toLocal()}"
                        .split(' ')[0],
                  );
                }),
                IconButton(
                  icon: const Icon(Icons.calendar_today),
                  onPressed: () => controller.pickDate(context),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text('País:'),
            Obx(() {
              return DropdownButtonFormField<String>(
                value: controller.selectedPais.value.isEmpty
                    ? null
                    : controller.selectedPais.value,
                items: controller.paises.map((String pais) {
                  return DropdownMenuItem<String>(
                    value: pais,
                    child: Text(pais),
                  );
                }).toList(),
                onChanged: (value) => controller.selectedPais.value = value!,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              );
            }),
            const SizedBox(height: 16),
            const Text('Ciudad:'),
            Obx(() {
              return DropdownButtonFormField<String>(
                value: controller.selectedCiudad.value.isEmpty
                    ? null
                    : controller.selectedCiudad.value,
                items: controller.ciudades.map((String ciudad) {
                  return DropdownMenuItem<String>(
                    value: ciudad,
                    child: Text(ciudad),
                  );
                }).toList(),
                onChanged: (value) => controller.selectedCiudad.value = value!,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              );
            }),
            const SizedBox(height: 16),
            const Text('Dirección física:'),
            TextField(
              onChanged: (value) => controller.direccion.value = value,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            const Text('Código Postal:'),
            TextField(
              onChanged: (value) => controller.codigoPostal.value = value,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16.0),
            Center(
              child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed('/form2');
                    Get.snackbar('Correcto!', 'Informacion guardada');
                  },
                  child: const Text('Siguiente')),
            )
          ],
        ),
      ),
    );
  }
}
