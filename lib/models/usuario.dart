// ignore_for_file: public_member_api_docs, sort_constructors_first

class Usuario {
  String nombre;
  int? edad;
  List<String>? profesiones;

  Usuario({
    required this.nombre,
    this.edad,
    this.profesiones,
  });
}
