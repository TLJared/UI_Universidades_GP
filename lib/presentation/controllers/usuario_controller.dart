import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ui_universidades_gp/providers/usuario_providers.dart';

class UsuarioController extends GetxController {
  final UsuarioProviders usuarioProviders = UsuarioProviders();

  Future<Map<String, dynamic>> login(String email, String password) async {
    try {
      final result = await usuarioProviders.login(email, password);
      if (result['success']) {
        // Guardar el token en SharedPreferences
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('token', result['token']);
        return {'success': true};
      } else {
        // Retorna el mensaje de error en caso de fallo
        return {'success': false, 'error': result['error']};
      }
    } catch (e) {
      // Manejo de errores generales
      return {'success': false, 'error': 'Error al intentar iniciar sesión'};
    }
  }
}
