import 'package:flutter/material.dart';
import 'package:flutter_estados/models/usuario.dart';
import 'package:flutter_estados/services/usuario_service.dart';
import 'package:provider/provider.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<UsuarioService>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: usuarioService.existeUsuario
            ? Text(usuarioService.usuario.nombre)
            : const Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: () {
                final newUser = Usuario(
                    nombre: 'Nabih U.',
                    edad: 50,
                    profesiones: ['Flutter Developer', 'FullStack Developer']);
                usuarioService.usuario = newUser;
              },
              child: const Text(
                'Establecer Usuario',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: () {
                usuarioService.cambiarEdad(30);
              },
              child: const Text(
                'Cambiar Edad',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: () {
                usuarioService.agregarProfesiones();
              },
              child: const Text(
                'Añadir Profesión',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
