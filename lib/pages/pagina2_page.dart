import 'package:flutter/material.dart';
import 'package:flutter_estados/controllers/usuario_controller.dart';
import 'package:flutter_estados/models/usuario.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/route_manager.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // print(Get.arguments['edad']);
    final usuarioCtrl = Get.find<UsuarioController>();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Pagina 2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: () {
                usuarioCtrl.cargarusuario(Usuario(nombre: 'Azalea', edad: 19));
                Get.snackbar('Usuario Establecido', 'Azalea es el usuario',
                    backgroundColor:
                        Get.isDarkMode ? Colors.grey : Colors.white,
                    boxShadows: [
                      const BoxShadow(
                        color: Colors.black38,
                        offset: Offset(1, 6),
                        blurRadius: 6,
                      )
                    ]);
              },
              child: const Text(
                'Establecer Usuario',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: () {
                usuarioCtrl.cambiarEdad(20);
              },
              child: const Text(
                'Cambiar Edad',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: () {
                usuarioCtrl.agregarProfesion(
                    // 'Profesion #${usuarioCtrl.usuario.value.profesiones.length + 1}');
                    'Profesion #${usuarioCtrl.profesionesCount + 1}');
              },
              child: const Text(
                'Añadir Profesión',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: Colors.blueAccent,
              onPressed: () {
                Get.changeTheme(
                    Get.isDarkMode ? ThemeData.light() : ThemeData.dark());
              },
              child: const Text(
                'Cambiar Tema',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
