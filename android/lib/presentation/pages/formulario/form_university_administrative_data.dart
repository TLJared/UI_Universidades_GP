//final controller = Get.put(UniversityController());
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/university_ccontroller.dart'; // Importa el controlador

class AdminDataView extends StatelessWidget {
  AdminDataView({super.key});

  final controller = Get.put(UniversityController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Implementa la funcionalidad de retroceso
          },
        ),
        title: Text('Datos Administrativos', style: TextStyle(fontSize: 24)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTextField(
                label: 'Rector o presidente:',
                onChanged: (value) => controller.rector.value = value,
              ),
              _buildTextField(
                label: 'Cargo del representante legal:',
                onChanged: (value) =>
                    controller.cargoRepresentante.value = value,
              ),
              _buildTextField(
                label: 'Correo electrónico del representante legal:',
                onChanged: (value) =>
                    controller.correoRepresentante.value = value,
              ),
              _buildTextField(
                label: 'Número de identificación fiscal:',
                hint: 'Ejemplo: wAB12345678',
                onChanged: (value) =>
                    controller.identificacionFiscal.value = value,
              ),
              SizedBox(height: 20),
              _buildContactInputField(controller),
              SizedBox(height: 10),
              Obx(() {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (int i = 0; i < controller.contactos.length; i++)
                      ListTile(
                        title: Text('${i + 1}- ${controller.contactos[i]}'),
                        trailing: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            controller.removeContacto(i);
                          },
                        ),
                      )
                  ],
                );
              }),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed('home_screen');
                    Get.snackbar('Exito!',
                        'Se ha Guardado correctamente su informacion');
                  },
                  child: Text('Siguiente'),
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    String? hint,
    required Function(String) onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontSize: 16)),
        TextField(
          decoration: InputDecoration(
            hintText: hint ?? '',
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.symmetric(horizontal: 10),
          ),
          onChanged: onChanged,
        ),
        SizedBox(height: 15),
      ],
    );
  }

  Widget _buildContactInputField(UniversityController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Personas de contacto (Nombre y cargo)',
            style: TextStyle(fontSize: 16)),
        Row(
          children: [
            Expanded(
              child: TextField(
                controller: controller.contactoController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ),
            ),
            IconButton(
              icon: Icon(Icons.add_circle),
              onPressed: () {
                if (controller.contactoController.text.isNotEmpty) {
                  controller.addContacto(controller.contactoController.text);
                  controller.contactoController.clear();
                }
              },
            ),
          ],
        ),
      ],
    );
  }
}






// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../controllers/university_ccontroller.dart'; // Asegúrate de importar correctamente el controlador

// class AdminDataView extends StatelessWidget {
//   const AdminDataView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final UniversityController controllerUni = Get.put(UniversityController());

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Datos Administrativos'),
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back),
//           onPressed: () {
//             Get.back();
//           },
//         ),
//       ),
//       body: SingleChildScrollView(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // Rector o presidente
//             Text('Rector o presidente:'),
//             TextField(
//               onChanged: (value) =>
//                   controllerUni.rectorPresidente.value = value,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 16),

//             // Cargo del representante legal
//             Text('Cargo del representante legal:'),
//             TextField(
//               onChanged: (value) =>
//                   controllerUni.cargoRepresentante.value = value,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 16),

//             // Correo electrónico del representante legal
//             Text('Correo electrónico del representante legal:'),
//             TextField(
//               onChanged: (value) =>
//                   controllerUni.emailRepresentante.value = value,
//               decoration: InputDecoration(
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 16),

//             // Número de identificación fiscal
//             Text('Número de identificación fiscal:'),
//             TextField(
//               onChanged: (value) =>
//                   controllerUni.identificacionFiscal.value = value,
//               decoration: InputDecoration(
//                 hintText: 'Ejemplo: wA12345678',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(height: 16),

//             // Personas de contacto
//             Text('Personas de contacto (Nombre y cargo):'),
//             Row(
//               children: [
//                 Expanded(
//                   child: TextField(
//                     onSubmitted: (value) {
//                       controllerUni.agregarPersonaContacto(value);
//                     },
//                     decoration: InputDecoration(
//                       border: OutlineInputBorder(),
//                     ),
//                   ),
//                 ),
//                 IconButton(
//                   icon: Icon(Icons.add_box),
//                   color: Colors.cyan,
//                   onPressed: () {},
//                 ),
//               ],
//             ),
//             SizedBox(height: 16),

//             // Listado de personas de contacto agregadas
//             Obx(() {
//               return Column(
//                 children: List.generate(controllerUni.personasContacto.length,
//                     (index) {
//                   return ListTile(
//                     title: Text(controllerUni.personasContacto[index]),
//                     trailing: IconButton(
//                       icon: Icon(Icons.delete),
//                       onPressed: () {
//                         controllerUni.personasContacto.removeAt(index);
//                       },
//                     ),
//                   );
//                 }),
//               );
//             }),
//             SizedBox(height: 32),

//             // Botón para continuar
//             Center(
//               child: ElevatedButton(
//                 onPressed: () {
//                   // Acción para el botón siguiente
//                   Get.toNamed(
//                       '/siguiente'); // Define la ruta para la siguiente vista
//                 },
//                 child: Text('Siguiente'),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
