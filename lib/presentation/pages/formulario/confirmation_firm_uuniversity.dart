import 'package:flutter/material.dart';
import 'package:ui_universidades_gp/presentation/widgets/form_widget.dart';

class ConfirmationScreen extends StatefulWidget {
  @override
  _ConfirmationScreenState createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  bool _terminosAceptados = false;
  final _firmaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirmación y Firma'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          child: ListView(
            children: [
              checkboxField('Acepto términos y condiciones', _terminosAceptados, (value) {
                setState(() {
                  _terminosAceptados = value!;
                });
              }),
              signatureField(_firmaController, 'Firma del Representante Legal'),
              fechaField(context, DateTime.now(), (newDate) {
                // Aquí puedes guardar la fecha si es necesario
              }),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_terminosAceptados) {
                    // Aquí iría la lógica para enviar la información
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Formulario enviado con éxito')),
                    );
                  }
                },
                child: Text('Enviar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}