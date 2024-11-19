import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemModel extends GetxController {
  final String ImageURL;
  final String name;
  final String description;
  final int Precio;
  final List<String> ingenierias;
  final List<String> licenciaturas;
  final String FechaPago;
  final List<String> becas; //Apoyos financieros
  final List<String> deportesCultares;
  final List<String> ActividadesExtracurriculares;
  final List<String> areaApoyoEstudiantes;
  final List<String> contactos;

  ItemModel(
      {required this.ImageURL,
      required this.name,
      required this.description,
      required this.Precio,
      required this.ingenierias,
      required this.licenciaturas,
      required this.FechaPago,
      required this.becas,
      required this.deportesCultares,
      required this.ActividadesExtracurriculares,
      required this.areaApoyoEstudiantes,
      required this.contactos});
}
