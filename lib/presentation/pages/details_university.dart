import 'package:flutter/material.dart';
import '../../datosApp/models/universities_model.dart';

class UniversityDetailView extends StatelessWidget {
  final ItemModel item;

  const UniversityDetailView({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalles de: " + item.name),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              item.ImageURL,
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
            SizedBox(height: 16),
            Text(
              item.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 8),
            Text(
              item.description,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 10,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            //Carta que contiene informacion de Carreras Universitiarias
            Container(
                child: Card(
              margin: EdgeInsets.symmetric(vertical: 10),
              elevation: 4,
              shadowColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: ListTile(
                contentPadding: EdgeInsetsDirectional.all(16.0),
                leading: GestureDetector(
                  onTap: () =>
                      _showFullImage(context, item.description, item.ImageURL),
                  child: Hero(
                      tag: 'profile',
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(item.ImageURL),
                      )),
                ),
                title: Text(
                  "Carreras",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Se dara a conocer los diferentes costos de inscripcion anual, precio por cuatrimestre, pago de  examen de admision y demas....",
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.money_off_csred, color: Colors.green),
                  onPressed: () {
                    showEmployeeDetails(context, item);
                  },
                ),
              ),
            )),
            //Carta que contiene la informacion de COSTOS.
            Container(height: 8),
            Container(
                child: Card(
              margin: EdgeInsets.symmetric(vertical: 10),
              elevation: 4,
              shadowColor: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: ListTile(
                contentPadding: EdgeInsetsDirectional.all(16.0),
                leading: GestureDetector(
                  onTap: () =>
                      _showFullImage(context, item.description, item.ImageURL),
                  child: Hero(
                      tag: 'profile',
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(item.ImageURL),
                      )),
                ),
                title: Text(
                  "COSTOS",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Se dara a conocer los diferentes costos de inscripcion anual, precio por cuatrimestre, pago de  examen de admision y demas....",
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.money_off_csred, color: Colors.green),
                  onPressed: () {
                    showEmployeeDetails(context, item);
                  },
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }

  void _showFullImage(
      BuildContext context, String description, String imageURL) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          child: GestureDetector(
            onTap: () => Navigator.of(context)
                .pop(), // Cerrar al tocar fuera de la imagen
            child: Hero(
              tag: 'profileImage_', // Tag para la animación Hero
              child: Container(
                width: MediaQuery.of(context).size.width *
                    0.8, // Ajusta el ancho al 80% de la pantalla
                height: MediaQuery.of(context).size.width *
                    0.8, // Mantiene la imagen cuadrada
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(15.0), // Bordes redondeados
                  image: DecorationImage(
                    image: NetworkImage(item.ImageURL),
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

  void showEmployeeDetails(BuildContext context, ItemModel item) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(item.name),
          content: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () =>
                      _showFullImage(context, item.description, item.ImageURL),
                  child: Hero(
                    tag: 'profileImage_${item.name}',
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: NetworkImage(item.ImageURL),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Descripción",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(item.description),
                const SizedBox(height: 20),
                Text(
                  "Ingenierías",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ...item.ingenierias
                    .map((ingenieria) => Text("- $ingenieria"))
                    .toList(),
                const SizedBox(height: 20),
                Text(
                  "Licenciaturas",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ...item.licenciaturas
                    .map((licenciatura) => Text("- $licenciatura"))
                    .toList(),
              ],
            ),
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

  // void showEmployeeDetails(
  //     BuildContext context, String description, String ImageURL) {
  //   showDialog(
  //     context: context,
  //     builder: (context) {
  //       return AlertDialog(
  //         title: Text(item.name),
  //         content: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             GestureDetector(
  //               onTap: () =>
  //                   _showFullImage(context, item.description, item.ImageURL),
  //               child: Hero(
  //                 tag: 'profileImage_',
  //                 child: CircleAvatar(
  //                   radius: 40,
  //                   backgroundImage: NetworkImage(item.ImageURL),
  //                 ),
  //               ),
  //             ),
  //             const SizedBox(height: 20),
  //             Text(
  //               "Algo Ramdom",
  //               style: const TextStyle(fontSize: 18),
  //             ),
  //             const SizedBox(height: 20),
  //             const Text(
  //               'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vel mauris sit amet metus placerat pharetra. Proin consequat, mauris at volutpat ultricies.',
  //               textAlign: TextAlign.center,
  //             ),
  //           ],
  //         ),
  //         actions: [
  //           TextButton(
  //             onPressed: () => Navigator.of(context).pop(),
  //             child: const Text('Cerrar'),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }
}
