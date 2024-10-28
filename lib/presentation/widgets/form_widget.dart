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

///////////////////////////////////////////////
////                                      ////
////                                      ////
////      Servicios e Infraestructura     ////
////                                      ////
//////////////////////////////////////////////

Widget numeroCampusField(TextEditingController controller) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(labelText: 'Número de Campus'),
    keyboardType: TextInputType.number,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor ingresa el número de campus';
      }
      return null;
    },
  );
}

// Campo para bibliotecas
Widget bibliotecasField(TextEditingController controller) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(labelText: 'Número de Bibliotecas'),
    keyboardType: TextInputType.number,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor ingresa el número de bibliotecas';
      }
      return null;
    },
  );
}

// Campo para laboratorios
Widget laboratoriosField(TextEditingController controller) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(labelText: 'Número de Laboratorios'),
    keyboardType: TextInputType.number,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor ingresa el número de laboratorios';
      }
      return null;
    },
  );
}

// Campo para deportes
Widget deportesField(TextEditingController controller) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(labelText: 'Actividades Deportivas'),
  );
}

// Checkbox genérico
Widget checkboxField(String title, bool value, ValueChanged<bool?>? onChanged) {
  return CheckboxListTile(
    title: Text(title),
    value: value,
    onChanged: onChanged,
  );
}
///////////////////////////////////////////////
////                                      ////
////                                      ////
////           Datos Financieros          ////
////                                      ////
//////////////////////////////////////////////

Widget tipoFinanciamientoDropdown(
    String tipoFinanciamiento, ValueChanged<String?>? onChanged) {
  return DropdownButtonFormField<String>(
    value: tipoFinanciamiento,
    decoration: InputDecoration(labelText: 'Tipo de Financiamiento'),
    onChanged: onChanged,
    items: [
      DropdownMenuItem(value: 'Público', child: Text('Público')),
      DropdownMenuItem(value: 'Privado', child: Text('Privado')),
      DropdownMenuItem(value: 'Mixto', child: Text('Mixto')),
    ],
  );
}

// Campo para los costos de matrícula
Widget costosMatriculaField(TextEditingController controller, String label) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(labelText: label),
    keyboardType: TextInputType.number,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor ingresa un valor';
      }
      return null;
    },
  );
}

// Checkbox group para fuentes de ingreso
Widget fuentesIngresoCheckboxGroup(List<String> fuentesIngreso) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Fuentes de Ingreso'),
      CheckboxListTile(
        title: Text('Becas'),
        value: fuentesIngreso.contains('Becas'),
        onChanged: (bool? value) {
          if (value == true) {
            fuentesIngreso.add('Becas');
          } else {
            fuentesIngreso.remove('Becas');
          }
        },
      ),
      CheckboxListTile(
        title: Text('Donaciones'),
        value: fuentesIngreso.contains('Donaciones'),
        onChanged: (bool? value) {
          if (value == true) {
            fuentesIngreso.add('Donaciones');
          } else {
            fuentesIngreso.remove('Donaciones');
          }
        },
      ),
      CheckboxListTile(
        title: Text('Subvenciones'),
        value: fuentesIngreso.contains('Subvenciones'),
        onChanged: (bool? value) {
          if (value == true) {
            fuentesIngreso.add('Subvenciones');
          } else {
            fuentesIngreso.remove('Subvenciones');
          }
        },
      ),
    ],
  );
}

///////////////////////////////////////////////
////                                      ////
////                                      ////
////       FACULTADES Y CARRERAS          ////
////                                      ////
//////////////////////////////////////////////

Widget numeroFacultadesField(TextEditingController controller) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      labelText: 'Número de Facultades',
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.number,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor ingrese un número de facultades';
      }
      return null;
    },
  );
}

// Widget para Campo Repetitivo (adaptado para facultades y carreras)
Widget repeatingGroupField(
    List<dynamic> items, String title, String label, String hint) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ...items.map((item) {
        // Si es un Map, se asume que es una facultad con una carrera
        if (item is Map) {
          return Column(
            children: [
              TextFormField(
                initialValue: item['facultad'] ?? '',
                decoration: InputDecoration(
                  labelText: 'Facultad',
                  hintText: hint,
                  border: OutlineInputBorder(),
                ),
              ),
              TextFormField(
                initialValue: item['carrera'] ?? '',
                decoration: InputDecoration(
                  labelText: 'Carrera',
                  hintText: 'Carrera',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          );
        }
        return TextFormField(
          initialValue: item,
          decoration: InputDecoration(
            labelText: label,
            hintText: hint,
            border: OutlineInputBorder(),
          ),
        );
      }).toList(),
      SizedBox(height: 8),
      ElevatedButton(
        onPressed: () {
          if (title == 'Facultades') {
            items.add(''); // Agrega un nuevo campo vacío para facultades
          } else if (title == 'Carreras por Facultad') {
            items.add({
              'facultad': '',
              'carrera': ''
            }); // Agrega un nuevo campo vacío para carreras
          }
        },
        child: Text('Agregar $title'),
      ),
    ],
  );
}

///////////////////////////////////////////////
////                                      ////
////                                      ////
////       DOCUMENTACION ADJUNTA          ////
////                                      ////
//////////////////////////////////////////////

Widget fileUploadField(TextEditingController controller, String label) {
  return TextFormField(
    controller: controller,
    readOnly: true,
    decoration: InputDecoration(
      labelText: label,
      hintText: 'Toca para seleccionar un archivo',
      border: OutlineInputBorder(),
      suffixIcon: IconButton(
        icon: Icon(Icons.upload_file),
        onPressed: () async {},
      ),
    ),
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor selecciona un archivo';
      }
      return null;
    },
  );
}
///////////////////////////////////////////////
////                                      ////
////          CONFIMACION Y FIRMA         ////
////                                      ////
//////////////////////////////////////////////

Widget DESPLIEGUEField(
    String label, bool value, ValueChanged<bool?>? onChanged) {
  return Row(
    children: [
      Checkbox(
          value: value,
          onChanged: onChanged), // Checkbox que permite cambiar el valor
      Text(label), // Texto descriptivo del checkbox
    ],
  );
}

// Widget para crear un campo de firma
Widget signatureField(TextEditingController controller, String label) {
  return TextFormField(
    controller: controller, // Controlador para el campo de firma
    decoration: InputDecoration(
      labelText: label, // Etiqueta del campo
      border: OutlineInputBorder(), // Borde del campo
    ),
    validator: (value) {
      // Valida que el campo no esté vacío
      if (value == null || value.isEmpty) {
        return 'Por favor, proporciona la firma'; // Mensaje de error si está vacío
      }
      return null; // Retorna null si la validación es correcta
    },
  );
}

// Widget para crear un campo de selección de fecha
Widget fechaField(BuildContext context, DateTime initialDate,
    Function(DateTime) onDateChanged) {
  return GestureDetector(
    onTap: () async {
      // Abre un selector de fecha
      final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: initialDate,
        firstDate: DateTime(2000), // Fecha mínima
        lastDate: DateTime(2101), // Fecha máxima
      );
      // Si se selecciona una nueva fecha, llama a la función proporcionada
      if (picked != null && picked != initialDate) {
        onDateChanged(picked);
      }
    },
    child: AbsorbPointer(
      // Evita la interacción directa con el TextFormField
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Fecha', // Etiqueta del campo
          hintText: '${initialDate.toLocal()}'
              .split(' ')[0], // Muestra la fecha actual
          border: OutlineInputBorder(), // Borde del campo
        ),
      ),
    ),
  );
}

///////////////////////////////////////////////
////                                      ////
////       INFORMACION ADICIONAL          ////
////                                      ////
//////////////////////////////////////////////
Widget emailField(TextEditingController controller) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      labelText: 'Correo Electrónico',
      border: OutlineInputBorder(),
    ),
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor ingrese un correo electrónico';
      }
      return null;
    },
  );
}

// Widget para el Campo de Teléfono
Widget telefonoField(TextEditingController controller, String label) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      labelText: label,
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.phone,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor ingrese un número de teléfono';
      }
      return null;
    },
  );
}

// Widget para Campo de URL
Widget urlField(TextEditingController controller, String label) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      labelText: label,
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.url,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor ingrese una URL';
      }
      return null;
    },
  );
}

// Widget para Campo de Checkbox
Widget dESPEField(String title, bool value, ValueChanged<bool?>? onChanged) {
  return Row(
    children: [
      Checkbox(
        value: value,
        onChanged: onChanged,
      ),
      Text(title),
    ],
  );
}

// Widget para Text Area
Widget textareaField(TextEditingController controller, String label) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      labelText: label,
      border: OutlineInputBorder(),
    ),
    maxLines: 5, // Permite múltiples líneas
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor ingrese una descripción';
      }
      return null;
    },
  );
}

// Widget para Campo Repetitivo
Widget repeatingGroup1Field(
    List<String> items, String title, String label, String hint) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ...items.map((item) {
        return TextFormField(
          initialValue: item,
          decoration: InputDecoration(
            labelText: label,
            hintText: hint,
            border: OutlineInputBorder(),
          ),
        );
      }).toList(),
      SizedBox(height: 8),
      ElevatedButton(
        onPressed: () {
          items.add(''); // Agrega un nuevo campo vacío
        },
        child: Text('Agregar $title'),
      ),
    ],
  );
}

// Widget para Dropdown de Tipo de Financiamiento
Widget tipoFinanciamiento1Dropdown(
    String selectedValue, ValueChanged<String?> onChanged) {
  return DropdownButtonFormField<String>(
    value: selectedValue,
    decoration: InputDecoration(
      labelText: 'Tipo de Financiamiento',
      border: OutlineInputBorder(),
    ),
    items: <String>['Público', 'Privado', 'Mixto']
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
    }).toList(),
    onChanged: onChanged,
  );
}

// Widget para Campo de Costos de Matrícula
Widget costosMatricula1Field(TextEditingController controller, String label) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      labelText: label,
      border: OutlineInputBorder(),
    ),
    keyboardType: TextInputType.number,
    validator: (value) {
      if (value == null || value.isEmpty) {
        return 'Por favor ingrese un costo';
      }
      return null;
    },
  );
}

// Widget para Checkbox Group de Fuentes de Ingreso
Widget fuentesIngreso1CheckboxGroup(List<String> sources) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('Fuentes de Ingreso',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ...['Donaciones', 'Subvenciones', 'Matrícula', 'Otros'].map((source) {
        return CheckboxListTile(
          title: Text(source),
          value: sources.contains(source),
          onChanged: (bool? value) {
            if (value == true) {
              sources.add(source);
            } else {
              sources.remove(source);
            }
          },
        );
      }).toList(),
    ],
  );
}

///////////////////////////////////////////////
////                                      ////
////    INFORMACION SOBRE ACREDITACION    ////
////                                      ////
//////////////////////////////////////////////
Widget acreditacionField(TextEditingController controller) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      labelText: 'Acreditación',
      border: OutlineInputBorder(),
      hintText: 'Ingrese la acreditación',
    ),
  );
}

// Widget para el campo de número de registro
Widget numeroRegistroField(TextEditingController controller) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      labelText: 'Número de Registro',
      border: OutlineInputBorder(),
      hintText: 'Ingrese el número de registro',
    ),
  );
}

// Widget para el campo de certificaciones
Widget certificacionesField(TextEditingController controller) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      labelText: 'Certificaciones',
      border: OutlineInputBorder(),
      hintText: 'Ingrese las certificaciones',
    ),
  );
}

// Widget para el campo de premios
Widget premiosField(TextEditingController controller) {
  return TextField(
    controller: controller,
    decoration: InputDecoration(
      labelText: 'Premios',
      border: OutlineInputBorder(),
      hintText: 'Ingrese los premios',
    ),
  );
}
