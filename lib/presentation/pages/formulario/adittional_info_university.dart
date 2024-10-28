import 'package:flutter/material.dart';
import 'package:ui_universidades_gp/presentation/widgets/form_widget.dart';

class AdditionalInfoScreen extends StatefulWidget {
  @override
  _AdditionalInfoScreenState createState() => _AdditionalInfoScreenState();
}

class _AdditionalInfoScreenState extends State<AdditionalInfoScreen> {
  bool _proyectosInvestigacion = false;
  final _descripcionProyectosController = TextEditingController();
  bool _intercambioEstudiantil = false;
  final _universidadesSocias = <String>[];
  bool _colaboracionSector = false;
  final _descripcionColaboracionesController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Información Adicional'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: ListView(
            children: [
              checkboxField('¿Involucrada en Proyectos de Investigación?',
                  _proyectosInvestigacion, (value) {
                setState(() {
                  _proyectosInvestigacion = value!;
                });
              }),
              textareaField(
                  _descripcionProyectosController, 'Descripción de Proyectos'),
              checkboxField('Programas de Intercambio Estudiantil',
                  _intercambioEstudiantil, (value) {
                setState(() {
                  _intercambioEstudiantil = value!;
                });
              }),
              repeatingGroupField(_universidadesSocias, 'Universidades Socias',
                  'Nombre de Universidad', ''),
              checkboxField(
                  'Colaboración con el Sector Empresarial', _colaboracionSector,
                  (value) {
                setState(() {
                  _colaboracionSector = value!;
                });
              }),
              textareaField(_descripcionColaboracionesController,
                  'Descripción de Colaboraciones'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/documentation');
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
