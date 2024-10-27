import 'package:get/get.dart';
import 'package:ui_universidades_gp/datosApp/services/usuario_service.dart';

class UsuarioController extends GetxController {
  final UsuarioService usuarioService = UsuarioService();

  Future<String?> registrarUsuario(
      String nombre, String email, String password) async {
    try {
      await usuarioService.registrarUsuario(nombre, email, password);
      return null; // Registro exitoso
    } catch (e) {
      return e.toString(); // Devuelve el mensaje de error
    }
  }

  Future<String?> login(String email, String password) async {
    try {
      return await usuarioService.login(
          email, password); // Retorna el mensaje de error si falla
    } catch (e) {
      return 'Error al intentar iniciar sesión'; // Mensaje genérico si hay un error
    }
  }
}