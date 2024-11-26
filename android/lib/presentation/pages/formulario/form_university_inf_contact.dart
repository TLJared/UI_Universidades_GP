import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/university_ccontroller.dart'; // Asegúrate de importar correctamente el controlador

class ContactInfoView extends StatelessWidget {
  const ContactInfoView({super.key});

  @override
  Widget build(BuildContext context) {
    final UniversityController controllerUni = Get.put(UniversityController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('Información de Contacto'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Correo electrónico institucional
            const Text('Correo electrónico institucional:'),
            TextField(
              onChanged: (value) =>
                  controllerUni.emailInstitucional.value = value,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // Número de teléfono principal
            const Text('Número de teléfono principal:'),
            TextField(
              onChanged: (value) =>
                  controllerUni.telefonoPrincipal.value = value,
              decoration: const InputDecoration(
                hintText: 'Ejemplo: (123) 456-7890',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // Número de teléfono adicional
            const Text('Número de teléfono adicional:'),
            TextField(
              onChanged: (value) =>
                  controllerUni.telefonoAdicional.value = value,
              decoration: const InputDecoration(
                hintText: 'Ejemplo: (123) 987-6543',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // Página web oficial
            const Text('Página web oficial:'),
            TextField(
              onChanged: (value) => controllerUni.paginaWeb.value = value,
              decoration: const InputDecoration(
                hintText: 'Ejemplo: www.universidaddejemplo.edu',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            // Redes sociales (opcional)
            const Text('Redes sociales (opcional):'),
            TextField(
              onChanged: (value) => controllerUni.redesSociales.value = value,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 32),

            // Botón para continuar
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                      '/administrative_data'); // Define la ruta para la siguiente vista
                  Get.snackbar('Correcto!', 'Informacion guardada');
                },
                child: const Text('Siguiente'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
