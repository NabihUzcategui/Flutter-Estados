import 'package:flutter/material.dart';
import 'package:flutter_estados/controllers/usuario_controller.dart';
import 'package:flutter_estados/models/usuario.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final usuarioCtrl = Get.put(UsuarioController());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Pagina 1'),
      ),
      body: Obx(
        () => usuarioCtrl.existeUsuario.value
            ? InformacionUsuario(
                usuario: usuarioCtrl.usuario.value,
              )
            : const NoInfo(),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.android_rounded),
        // onPressed: () => Navigator.pushNamed(context, 'pagina2'),
        // onPressed: () => Get.to(const Pagina2Page()),
        onPressed: () => Get.toNamed('/pagina2', arguments: {
          'nombre': 'Nabih Peña',
          'edad:': 21,
        }),
      ),
    );
  }
}

class NoInfo extends StatelessWidget {
  const NoInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('No hay usuario seleccionado'),
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
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'General',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          const Divider(),
          ListTile(
            title: Text('Nombre: ${usuario.nombre}'),
          ),
          ListTile(
            title: Text('Edad: ${usuario.edad}'),
          ),
          const Text(
            'Profesiones',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          const Divider(),

          ...usuario.profesiones.map(
            (profesion) => ListTile(
              title: Text(profesion),
            ),
          )

          // ListTile(title: Text('Profesión 1')),
          // ListTile(title: Text('Profesión 2')),
          // ListTile(title: Text('Profesión 3')),
        ],
      ),
    );
  }
}
