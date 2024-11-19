import 'package:flutter/material.dart';
import '../../datosApp/models/universities_model.dart';

class UniversityDetailView extends StatelessWidget {
  final ItemModel item;

  const UniversityDetailView({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Detalles de: " + item.name,
          style: TextStyle(
              fontSize: 13, fontFamily: AutofillHints.transactionCurrency),
        ),
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
                  onTap: () => _showFullImage(
                      context, item.descriptionInge, item.ImageURL),
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
            //Carta que contiene la informacion de COSTOS.--------------------------------
            SizedBox(height: 8),
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
                  onTap: () => _showFullImage(
                      context, item.descrpcionPrecio, item.ImageURL),
                  child: Hero(
                      tag: 'profile',
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(item.ImageURL),
                      )),
                ),
                title: Text(
                  "Costos",
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
                    costosUniversity(context, item);
                  },
                ),
              ),
            )),
            ////////////////-----AREA DE BECAS DE UNIVERSIDAD///////////////////////////
            SizedBox(height: 8),
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
                      _showFullImage(context, item.descripBecas, item.ImageURL),
                  child: Hero(
                      tag: 'profile',
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(item.ImageURL),
                      )),
                ),
                title: Text(
                  "Becas",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Se dara a conocer los diferentes tipos de becas que la universidad otorga a sus estudiantes.",
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.money_off_csred, color: Colors.green),
                  onPressed: () {
                    becasUniversity(context, item);
                  },
                ),
              ),
            )),
            ////////////////----DEPORTES CULTURALES ////////////////////////////////
            SizedBox(height: 8),
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
                  onTap: () => _showFullImage(
                      context, item.descripActiCulturales, item.ImageURL),
                  child: Hero(
                      tag: 'profile',
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(item.ImageURL),
                      )),
                ),
                title: Text(
                  "Deportes Culturales Y Actividades Extracurriculares",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Se dara a conocer las diferetes actividades y deportes que la universidad otorga a sus alumnos.",
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.money_off_csred, color: Colors.green),
                  onPressed: () {
                    deportesUniversity(context, item);
                  },
                ),
              ),
            )),
            ////////////--Áreas de Apoyo Estudiantil--///////////////
            SizedBox(height: 8),
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
                  onTap: () => _showFullImage(
                      context, item.descripDepartHelpStudents, item.ImageURL),
                  child: Hero(
                      tag: 'profile',
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(item.ImageURL),
                      )),
                ),
                title: Text(
                  "Áreas de Apoyo Estudiantil",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Se dara a conocer los diferentes departamentos de apoyo y seguimiento para el estudiante.",
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.money_off_csred, color: Colors.green),
                  onPressed: () {
                    apoyoSectionsStudentsUniversity(context, item);
                  },
                ),
              ),
            )),
            ///////////////////--CONTACTOS----------------////////////////////////////////////////
            SizedBox(height: 8),
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
                  onTap: () => _showFullImage(
                      context, item.descripContactos, item.ImageURL),
                  child: Hero(
                      tag: 'profile',
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage: NetworkImage(item.ImageURL),
                      )),
                ),
                title: Text(
                  "Contactos",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  "Se muestra informacion de diferentes medios por los cuales es posible contacta con autoridades de dicha universidad.",
                  style: TextStyle(
                    fontSize: 10,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(Icons.money_off_csred, color: Colors.green),
                  onPressed: () {
                    contactosUniversity(context, item);
                  },
                ),
              ),
            )),
            ///////////////////////////////
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

  //descripcion de ingenierias
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
                  onTap: () => _showFullImage(
                      context, item.descriptionInge, item.ImageURL),
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

  ///---CARTA DE COSTOS
  void costosUniversity(BuildContext context, ItemModel item) {
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
                  "Costos",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(item.descrpcionPrecio),
                const SizedBox(height: 20),
                Text(
                  "Costos generales",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ...item.Precio.map((precios) => Text("- $precios")).toList(),
                const SizedBox(height: 20),
                // Text(
                //   "Licenciaturas",
                //   style: const TextStyle(
                //       fontSize: 18, fontWeight: FontWeight.bold),
                // ),
                // ...item.licenciaturas
                //     .map((licenciatura) => Text("- $licenciatura"))
                //     .toList(),
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

  ///---CARTA DE Becas de universidad
  void becasUniversity(BuildContext context, ItemModel item) {
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
                      _showFullImage(context, item.descripBecas, item.ImageURL),
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
                  "Becas",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(item.description),
                const SizedBox(height: 20),
                Text(
                  "Becas otorgadas por universidad:",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ...item.becas.map((beca) => Text("- $beca")).toList(),
                const SizedBox(height: 20),
                // Text(
                //   "Licenciaturas",
                //   style: const TextStyle(
                //       fontSize: 18, fontWeight: FontWeight.bold),
                // ),
                // ...item.licenciaturas
                //     .map((licenciatura) => Text("- $licenciatura"))
                //     .toList(),
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

  ///---CARTA DE Deportes Culturales
  void deportesUniversity(BuildContext context, ItemModel item) {
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
                  onTap: () => _showFullImage(
                      context, item.descripActiCulturales, item.ImageURL),
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
                  "Deportes culturales y Extracurriculares",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(item.description),
                const SizedBox(height: 20),
                Text(
                  "Actividades que otorga la universidad",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ...item.deportesCultares
                    .map((deportes) => Text("- $deportes"))
                    .toList(),
                const SizedBox(height: 20),
                // Text(
                //   "Licenciaturas",
                //   style: const TextStyle(
                //       fontSize: 18, fontWeight: FontWeight.bold),
                // ),
                // ...item.licenciaturas
                //     .map((licenciatura) => Text("- $licenciatura"))
                //     .toList(),
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

  ///---CARTA DE Departamentos de apoyo estudiantil
  void apoyoSectionsStudentsUniversity(BuildContext context, ItemModel item) {
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
                  onTap: () => _showFullImage(
                      context, item.descripDepartHelpStudents, item.ImageURL),
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
                  "Departamentos de apoyo / seguimiento a estudiantes",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(item.description),
                const SizedBox(height: 20),
                Text(
                  "Departamentos: ",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                ...item.areaApoyoEstudiantes
                    .map((areasApoyo) => Text("- $areasApoyo"))
                    .toList(),
                // const SizedBox(height: 20),
                // Text(
                //   "Licenciaturas",
                //   style: const TextStyle(
                //       fontSize: 18, fontWeight: FontWeight.bold),
                // ),
                // ...item.licenciaturas
                //     .map((licenciatura) => Text("- $licenciatura"))
                //     .toList(),
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

  ///---CARTA DE CONTACTOS
  void contactosUniversity(BuildContext context, ItemModel item) {
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
                  onTap: () => _showFullImage(
                      context, item.descripContactos, item.ImageURL),
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
                  "Contactos de institucion",
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(item.description),
                const SizedBox(height: 20),
                Text(
                  "",
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
}
