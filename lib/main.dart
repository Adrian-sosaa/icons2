import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Jan Sosa"),
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment:
                MainAxisAlignment.center, // Centra el contenido verticalmente
            children: <Widget>[
              Text("Jan adrian sosa 22308051281317",
                  style: TextStyle(fontSize: 40, color: Color(0xff2ab1ef))),
              SizedBox(
                height: 100,
              ),
              // Primera fila de iconos con subtítulos
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceEvenly, // Espacia los iconos uniformemente
                children: <Widget>[
                  IconWithSubtitle(icon: Icons.star, subtitle: 'Favorito'),
                  IconWithSubtitle(icon: Icons.favorite, subtitle: 'Me gusta'),
                  IconWithSubtitle(
                      icon: Icons.accessible_forward, subtitle: 'invalido'),
                  IconWithSubtitle(
                      icon: Icons.account_tree, subtitle: 'Gasolina'),
                ],
              ),
              SizedBox(height: 20.0), // Espacio entre las dos filas
              // Segunda fila de iconos con subtítulos
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconWithSubtitle(icon: Icons.thumb_up, subtitle: 'Like'),
                  IconWithSubtitle(icon: Icons.thumb_down, subtitle: 'Dislike'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget personalizado para un ícono con subtítulo
class IconWithSubtitle extends StatelessWidget {
  final IconData icon;
  final String subtitle;

  const IconWithSubtitle({required this.icon, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(icon, size: 50.0, color: Colors.blue), // Icono
        SizedBox(height: 8.0), // Espacio entre el ícono y el subtítulo
        Text(subtitle, style: TextStyle(fontSize: 16.0)), // Subtítulo
      ],
    );
  }
}
