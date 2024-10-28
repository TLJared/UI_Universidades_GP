import 'package:flutter/material.dart';
import 'package:ui_universidades_gp/presentation/widgets/form_widget.dart';
class DocumentationScreen extends StatefulWidget {
  @override
  _DocumentationScreenState createState() => _DocumentationScreenState();
}

class _DocumentationScreenState extends State<DocumentationScreen> {
  final _estatutosController = TextEditingController();
  final _certificadoAcreditacionController = TextEditingController();
  final _planEstudiosController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Documentación Adjunta'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: ListView(
            children: [
              fileUploadField(_estatutosController, 'Estatutos o Reglamentos Internos'),
              fileUploadField(_certificadoAcreditacionController, 'Certificado de Acreditación'),
              fileUploadField(_planEstudiosController, 'Plan de Estudios de las Carreras'),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/confirmation');
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