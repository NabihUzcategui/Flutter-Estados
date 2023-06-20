import 'package:flutter/material.dart';
import 'package:flutter_estados/models/usuario.dart';

class UsuarioService with ChangeNotifier {
  Usuario? _usuario;

  Usuario get usuario => _usuario!;
  bool get existeUsuario => _usuario != null ? true : false;

  set usuario(Usuario user) {
    _usuario = user;
    notifyListeners();
  }

  void cambiarEdad(int edad) {
    _usuario!.edad = edad;
    notifyListeners();
  }

  void removerusuario() {
    _usuario = null;
    notifyListeners();
  }

  void agregarProfesiones() {
    _usuario!.profesiones!
        .add('Profesiones ${_usuario!.profesiones!.length + 1}');
    notifyListeners();
  }
}
