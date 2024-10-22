class FormValidators {
  //Inicio de la clase
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'El correo/usuario no puede ser vacio';
    }
    //Defino las reglas con las expresiones regulares.
    final regex = RegExp(r'^[^@]+@[^@]+\.[^@]+');
    if (!regex.hasMatch(value)) {
      return 'Ingresa un correo valido';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'La contraseña no puede ser vacia';
    }
    if (value.length < 8) {
      return 'La contraseña debe tener minimo 8 caracteres';
    }
    return null;
  }

  static String? validateDropdown(String? value, String fieldName) {
    if (value == null || value.isEmpty) {
      return 'Por favor seleccione un $fieldName';
    }
    return null;
  }
}//Fin de la clase