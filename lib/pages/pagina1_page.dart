// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_estados/models/usuario.dart';
import 'package:flutter_estados/services/usuario_service.dart';
import 'package:provider/provider.dart';

class Pagina1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final usuarioService = Provider.of<UsuarioService>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Pagina 1'),
        actions: [
          IconButton(
            onPressed: () {
              usuarioService.removerusuario();
            },
            icon: Icon(Icons.exit_to_app),
          ),
        ],
      ),
      body: usuarioService.existeUsuario
          ? InformacionUsuario(
              usuario: usuarioService.usuario,
            )
          : Center(
              child: Text('no hay usuario seleccionado'),
            ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.android_rounded),
        onPressed: () => Navigator.pushNamed(context, 'pagina2'),
      ),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  final Usuario usuario;

  const InformacionUsuario({super.key, required this.usuario});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'General',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(
            title: Text('Nombre: ${usuario.nombre}'),
          ),
          ListTile(
            title: Text('Edad: ${usuario.edad}'),
          ),
          Text(
            'Profesiones',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          Divider(),

          ...usuario.profesiones!
              .map(
                (e) => ListTile(
                  title: Text(e),
                ),
              )
              .toList()

          // ListTile(
          //   title: Text('Profesión 1'),
          // ),
        ],
      ),
    );
  }
}
