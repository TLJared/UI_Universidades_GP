import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ItemModel extends GetxController {
  final String ImageURL;
  final String name;
  final String description;
  final String descrpcionPrecio;
  final List<String> Precio;
  final String descriptionInge;
  final List<String> ingenierias;
  final List<String> licenciaturas;
  final String FechaPago;
  final String descripBecas;
  final List<String> becas; //Apoyos financieros
  final String descripActiCulturales;
  final List<String> deportesCultares;
  final List<String> ActividadesExtracurriculares;
  final String descripDepartHelpStudents;
  final List<String> areaApoyoEstudiantes;
  final String descripContactos;
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
      required this.contactos,
      required this.descripActiCulturales,
      required this.descripBecas,
      required this.descripContactos,
      required this.descripDepartHelpStudents,
      required this.descriptionInge,
      required this.descrpcionPrecio});
}
