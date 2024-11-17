import 'package:flutter/material.dart';

class SectionFour extends StatelessWidget {
  const SectionFour({super.key});

  final List<Map<String, String>> employees = const [
    {
      'name': 'Jared Tlahuetl',
      'position': 'Desarrollador Senior',
      'image': '',
    },
    {
      'name': 'Miguel Angel Potrero',
      'position': 'Analista de Datos',
      'image': '',
    },
    {
      'name': 'Jose Ivan Rivera',
      'position': 'Diseñador UX/UI',
      'image': '',
    },
    {
      'name': 'Christian Uriel',
      'position': 'Gerente de Proyectos',
      'image': '',
    },
    {
      'name': 'Ismael',
      'position': 'Ingeniero de Software',
      'image': '',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: employees.length,
          itemBuilder: (context, index) {
            final employee = employees[index];
            return Card(
              margin: const EdgeInsets.symmetric(vertical: 10),
              elevation: 4,
              shadowColor: Color.fromARGB(121, 33, 58, 222),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.all(16.0),
                leading: GestureDetector(
                  onTap: () =>
                      _showFullImage(context, employee['image']!, index),
                  child: Hero(
                    tag: 'profileImage_$index',
                    child: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(employee['image']!),
                    ),
                  ),
                ),
                title: Text(
                  employee['name']!,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.black87,
                  ),
                ),
                subtitle: Text(
                  employee['position']!,
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.info_outline, color: Colors.blueGrey),
                  onPressed: () {
                    showEmployeeDetails(context, employee, index);
                  },
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  void showEmployeeDetails(
      BuildContext context, Map<String, String> employee, int index) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(employee['name']!),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              GestureDetector(
                onTap: () => _showFullImage(context, employee['image']!, index),
                child: Hero(
                  tag: 'profileImage_$index',
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(employee['image']!),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                employee['position']!,
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 20),
              const Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vel mauris sit amet metus placerat pharetra. Proin consequat, mauris at volutpat ultricies.',
                textAlign: TextAlign.center,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cerrar'),
            ),
          ],
        );
      },
    );
  }

  void _showFullImage(BuildContext context, String imageUrl, int index) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: GestureDetector(
            onTap: () => Navigator.of(context)
                .pop(), // Cerrar al tocar fuera de la imagen
            child: Hero(
              tag: 'profileImage_$index', // Tag para la animación Hero
              child: Container(
                width: MediaQuery.of(context).size.width *
                    0.8, // Ajusta el ancho al 80% de la pantalla
                height: MediaQuery.of(context).size.width *
                    0.8, // Mantiene la imagen cuadrada
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(15.0), // Bordes redondeados
                  image: DecorationImage(
                    image: NetworkImage(imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
