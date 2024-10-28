
import 'package:flutter/material.dart';
import 'package:ui_universidades_gp/presentation/widgets/form_widget.dart';

class FacultiesScreen extends StatefulWidget {
  @override
  FacultiesScreenState createState() => FacultiesScreenState();
}

class FacultiesScreenState extends State<FacultiesScreen> {
  final _numeroFacultadesController = TextEditingController();
  final _facultades = <String>[];
  final _carrerasPorFacultad = <Map<String, String>>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Facultades y Carreras'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: ListView(
            children: [
              numeroFacultadesField(_numeroFacultadesController),
              repeatingGroupField(_facultades, 'Facultades', 'Nombre de Facultad', ''),
              repeatingGroupField(_carrerasPorFacultad, 'Carreras por Facultad', 'Facultad', 'Carrera'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/accreditation');
                },
                child: Text('Siguiente'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
