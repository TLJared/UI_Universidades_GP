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
        title: Text('Información de Contacto'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Correo electrónico institucional
            Text('Correo electrónico institucional:'),
            TextField(
              onChanged: (value) =>
                  controllerUni.emailInstitucional.value = value,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),

            // Número de teléfono principal
            Text('Número de teléfono principal:'),
            TextField(
              onChanged: (value) =>
                  controllerUni.telefonoPrincipal.value = value,
              decoration: InputDecoration(
                hintText: 'Ejemplo: (123) 456-7890',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),

            // Número de teléfono adicional
            Text('Número de teléfono adicional:'),
            TextField(
              onChanged: (value) =>
                  controllerUni.telefonoAdicional.value = value,
              decoration: InputDecoration(
                hintText: 'Ejemplo: (123) 987-6543',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),

            // Página web oficial
            Text('Página web oficial:'),
            TextField(
              onChanged: (value) => controllerUni.paginaWeb.value = value,
              decoration: InputDecoration(
                hintText: 'Ejemplo: www.universidaddejemplo.edu',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),

            // Redes sociales (opcional)
            Text('Redes sociales (opcional):'),
            TextField(
              onChanged: (value) => controllerUni.redesSociales.value = value,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 32),

            // Botón para continuar
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Get.toNamed(
                      '/administrative_data'); // Define la ruta para la siguiente vista
                  Get.snackbar('Correcto!', 'Informacion guardada');
                },
                child: Text('Siguiente'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
