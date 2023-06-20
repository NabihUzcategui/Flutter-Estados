// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Pagina 1'),
      ),
      body: const InformacionUsuario(),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.android_rounded),
        onPressed: () => Navigator.pushNamed(context, 'pagina2'),
      ),
    );
  }
}

class InformacionUsuario extends StatelessWidget {
  const InformacionUsuario({super.key});

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
            title: Text('Nombre: '),
          ),
          ListTile(
            title: Text('Edad: '),
          ),
          Text(
            'Profesiones',
            style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
          Divider(),
          ListTile(
            title: Text('Profesión 1'),
          ),
          ListTile(
            title: Text('Profesión 2'),
          ),
          ListTile(
            title: Text('Profesión 3'),
          ),
        ],
      ),
    );
  }
}
