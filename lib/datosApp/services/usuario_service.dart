import 'package:http/http.dart' as http;
import 'dart:convert';

class UsuarioService {
  final String baseUrl = 'http://34.125.57.24:8080/api/usuarios';

  Future<void> registrarUsuario(
      String nombre, String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/registrar'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'nombre': nombre,
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode != 200) {
      // Extraer el mensaje de error del cuerpo de la respuesta
      var errorResponse = jsonDecode(response.body);
      throw Exception(
          'Error al registrar usuario: ${errorResponse['message'] ?? response.body}');
    }
  }

  Future<String?> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'email': email,
        'password': password,
      }),
    );

    // Manejar diferentes respuestas
    if (response.statusCode == 200) {
      // Si el login es exitoso, no se necesita hacer nada
      return null; // Login exitoso
    } else if (response.statusCode == 401) {
      // Usuario no autorizado
      return 'Email o contraseña incorrectos';
    } else {
      // Otros errores
      var errorResponse = jsonDecode(response.body);
      return 'Error al iniciar sesión: ${errorResponse['message'] ?? response.body}';
    }
  }
}
