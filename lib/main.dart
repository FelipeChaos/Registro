import 'package:flutter/material.dart';
import 'package:registro_infor_cs/computador_page.dart';
import 'package:registro_infor_cs/registro_usuario_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registro de Información CS',
      theme: ThemeData(
        primarySwatch: Colors.teal, // Color Verde Turquesa
        primaryColor: Colors.amber, // Color Amarillo para botones
        accentColor: Colors.amber[200], // Color de acento
        scaffoldBackgroundColor: Colors.white, // Fondo claro
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.amber, // Color de fondo de los botones
          textTheme: ButtonTextTheme.primary, // Estilo de texto de botones
        ),
      ),
      home: MyHomePage(),
      routes: {
        '/usuario': (context) => RegistroUsuarioPage(),
        '/computador': (context) => ComputadorPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menú de Registros'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenido a la página de registros',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal, // Cambiar al color verde turquesa
              ),
              child: Text(
                'Selecciona una opción',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: Text(
                'Registros de Usuarios',
                style: TextStyle(color: Colors.teal), // Cambiar al color verde turquesa
              ),
              onTap: () {
                Navigator.pushNamed(context, '/usuario');
              },
            ),
            ListTile(
              title: Text(
                'Registros de Computadores',
                style: TextStyle(color: Colors.teal), // Cambiar al color verde turquesa
              ),
              onTap: () {
                Navigator.pushNamed(context, '/computador');
              },
            ),
          ],
        ),
      ),
    );
  }
}
