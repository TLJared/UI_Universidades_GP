import 'package:flutter/material.dart';
import 'package:ui_universidades_gp/presentation/widgets/form_widget.dart';

class AccreditationScreen extends StatefulWidget {
  @override
  _AccreditationScreenState createState() => _AccreditationScreenState();
}

class _AccreditationScreenState extends State<AccreditationScreen> {
  final _acreditacionController = TextEditingController();
  final _numeroRegistroController = TextEditingController();
  final _certificacionesController = TextEditingController();
  final _premiosController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acreditación y Reconocimientos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: ListView(
            children: [
              acreditacionField(_acreditacionController),
              numeroRegistroField(_numeroRegistroController),
              certificacionesField(_certificacionesController),
              premiosField(_premiosController),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/financialInfo');
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