import 'package:flutter/material.dart';
import 'package:flutter_estados/pages/pagina1_page.dart';
import 'package:flutter_estados/pages/pagina2_page.dart';
import 'package:flutter_estados/services/usuario_service.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => UsuarioService(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'pagina1',
        routes: {
          'pagina1': (context) => Pagina1Page(),
          'pagina2': (context) => const Pagina2Page(),
        },
      ),
    );
  }
}
