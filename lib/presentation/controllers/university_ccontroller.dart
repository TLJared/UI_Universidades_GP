import 'package:get/get.dart';
import 'package:flutter/material.dart';

class UniversityController extends GetxController {
  // Variables observables para el segundo registro de las unis XD
  var emailInstitucional = ''.obs;
  var telefonoPrincipal = ''.obs;
  var telefonoAdicional = ''.obs;
  var paginaWeb = ''.obs;
  var redesSociales = ''.obs;
  // Variables para el primer registro jeje
  var universityName = ''.obs;
  var siglas = ''.obs;
  var direccion = ''.obs;
  var codigoPostal = ''.obs;

  //Variables de Datos Administrativos.
  var rector = ''.obs;
  var cargoRepresentante = ''.obs;
  var correoRepresentante = ''.obs;
  var identificacionFiscal = ''.obs;
  var contactos = <String>[].obs;

  // selecciones de los Dropdowns aqui se guarda la info de ellos
  var selectedTipo = ''.obs;
  var selectedPais = ''.obs;
  var selectedCiudad = ''.obs;

  // Listas de las cosas que elegiran, despues lo cambio jeje
  List<String> tiposUniversidad = ['Privada', 'Pública', 'Comunitaria'];
  List<String> paises = [' mexico', 'United States', 'Canada'];
  List<String> ciudades = ['Ciudad de mexico ', 'Washington ', 'Nebraska'];

  // alcenamiento de la fecha
  var fechaFundacion = DateTime.now().obs;

  void pickDate(BuildContext context) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      fechaFundacion.value = picked;
    }
  }

  //Aqui agrega un persona de contacto
  void agregarPersonaContacto(String nombreYcargo) {
    if (nombreYcargo.isNotEmpty) {
      contactos.add(nombreYcargo);
    }
  }

  TextEditingController contactoController = TextEditingController();

  // añadir contactos
  void addContacto(String contacto) {
    contactos.add(contacto);
  }

  // eliminar contacto
  void removeContacto(int index) {
    contactos.removeAt(index);
  }
}
