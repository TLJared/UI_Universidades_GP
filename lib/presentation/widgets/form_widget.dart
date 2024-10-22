// lib/widgets/form_widgets.dart
import 'package:flutter/material.dart';

// Widget para el campo de nombre
Widget nombreField(TextEditingController controller, bool isError) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      labelText: 'Nombre de la Universidad',
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: isError ? Colors.red : Colors.blue,
        ),
      ),
      errorText: isError ? 'Este campo es obligatorio' : null,
    ),
  );
}

// Widget para el campo de siglas
Widget siglasField(TextEditingController controller, bool isError) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      labelText: 'Siglas',
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: isError ? Colors.red : Colors.blue,
        ),
      ),
      errorText: isError ? 'Este campo es obligatorio' : null,
    ),
  );
}

// Widget para el dropdown de tipo de universidad
Widget tipoUniversidadDropdown(String tipo, ValueChanged<String?> onChanged) {
  return DropdownButtonFormField<String>(
    value: tipo,
    items: <String>['Pública', 'Privada', 'Mixta']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList(),
    onChanged: onChanged,
    decoration: InputDecoration(
      labelText: 'Tipo de Universidad',
      border: OutlineInputBorder(),
    ),
  );
}

// Widget para el campo de fecha de fundación
Widget fechaFundacionField(
    BuildContext context, DateTime fecha, ValueChanged<DateTime> onChanged) {
  return TextField(
    readOnly: true,
    decoration: InputDecoration(
      labelText: 'Fecha de Fundación',
      border: OutlineInputBorder(),
    ),
    onTap: () async {
      DateTime? newDate = await showDatePicker(
        context: context,
        initialDate: fecha,
        firstDate: DateTime(1900),
        lastDate: DateTime.now(),
      );
      if (newDate != null) {
        onChanged(newDate);
      }
    },
    controller: TextEditingController(text: "${fecha.toLocal()}".split(' ')[0]),
  );
}

// Widget para el dropdown de país
Widget paisDropdown(String pais, ValueChanged<String?> onChanged) {
  return DropdownButtonFormField<String>(
    value: pais,
    items: <String>['México', 'Colombia', 'Argentina']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList(),
    onChanged: onChanged,
    decoration: InputDecoration(
      labelText: 'País',
      border: OutlineInputBorder(),
    ),
  );
}

// Widget para el campo de ciudad
Widget ciudadField(TextEditingController controller, bool isError) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      labelText: 'Ciudad',
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: isError ? Colors.red : Colors.blue,
        ),
      ),
      errorText: isError ? 'Este campo es obligatorio' : null,
    ),
  );
}

// Widget para el campo de dirección
Widget direccionField(TextEditingController controller, bool isError) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      labelText: 'Dirección',
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: isError ? Colors.red : Colors.blue,
        ),
      ),
      errorText: isError ? 'Este campo es obligatorio' : null,
    ),
  );
}

// Widget para el campo de código postal
Widget codigoPostalField(TextEditingController controller, bool isError) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      labelText: 'Código Postal',
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: isError ? Colors.red : Colors.blue,
        ),
      ),
      errorText: isError ? 'Este campo es obligatorio' : null,
    ),
  );
}

// Widget para el campo de redes sociales
class RedesSocialesField extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onAdd;

  const RedesSocialesField({
    Key? key,
    required this.controller,
    required this.onAdd,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              labelText: 'Red Social (URL)',
              border: OutlineInputBorder(),
            ),
          ),
        ),
        IconButton(
          icon: Icon(Icons.add), // Ícono de más
          onPressed: onAdd,
        ),
      ],
    );
  }
}
