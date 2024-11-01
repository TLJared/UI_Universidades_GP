import 'dart:convert';
import 'package:http/http.dart' as http;

class UsuarioProviders {
  final String _firebaseToken = 'AIzaSyB6kNuWPAg2OuVcG49Ajg1Xlt129xjM7FE';

  Future<Map<String, dynamic>> registrarUsuario(
      String name, String email, String password) async {
    final authData = {
      'name': name,
      'email': email,
      'password': password,
      'returnSecureToken': true
    };

    final uri = Uri.parse(
        'https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=$_firebaseToken');

    final resp = await http.post(
      uri,
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode(authData),
    );

    Map<String, dynamic> decodeResp = json.decode(resp.body);

    if (resp.statusCode == 200) {
      // Registro exitoso
      return {
        'success': true,
        'data': decodeResp,
      };
    } else {
      // Error en el registro
      return {
        'success': false,
        'error': decodeResp['error']['message'] ?? 'Error desconocido',
      };
    }
  }

  Future<Map<String, dynamic>> login(String email, String password) async {
    final authData = {
      'email': email,
      'password': password,
      'returnSecureToken': true,
    };

    final uri = Uri.parse(
        'https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=$_firebaseToken');

    final resp = await http.post(
      uri,
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode(authData),
    );

    Map<String, dynamic> decodeResp = json.decode(resp.body);

    if (resp.statusCode == 200) {
      return {
        'success': true,
        'token': decodeResp['idToken'], // Token de autenticación
        'userId': decodeResp['localId'], // ID de usuario (opcional)
      };
    } else {
      return {
        'success': false,
        'error': decodeResp['error']['message'] ?? 'Error desconocido',
      };
    }
  }
}
