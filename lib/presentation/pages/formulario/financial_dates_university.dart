import 'package:flutter/material.dart';
import 'package:ui_universidades_gp/presentation/widgets/form_widget.dart';

class FinancialScreen extends StatefulWidget {
  @override
  FinancialScreenState createState() => FinancialScreenState();
}

class FinancialScreenState extends State<FinancialScreen> {
  String _tipoFinanciamiento = 'Público';
  final _pregradoController = TextEditingController();
  final _posgradoController = TextEditingController();
  final _otrosController = TextEditingController();
  final List<String> _fuentesIngreso = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Datos Financieros'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: ListView(
            children: [
              // Dropdown para seleccionar el tipo de financiamiento
              tipoFinanciamientoDropdown(_tipoFinanciamiento, (newValue) {
                setState(() {
                  _tipoFinanciamiento = newValue!;
                });
              }),

              // Campos para los costos de matrícula
              costosMatriculaField(_pregradoController, 'Costos de Pregrado'),
              costosMatriculaField(_posgradoController, 'Costos de Posgrado'),
              costosMatriculaField(
                  _otrosController, 'Costos de Otros Programas'),

              // Checkbox group para fuentes de ingreso
              fuentesIngresoCheckboxGroup(_fuentesIngreso),

              SizedBox(height: 20),

              // Botón para continuar
              ElevatedButton(
                onPressed: () {
                  // Navega a la siguiente pantalla
                  Navigator.pushNamed(context, '/services');
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
