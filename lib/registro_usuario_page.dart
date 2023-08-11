import 'package:flutter/material.dart';

class RegistroUsuarioPage extends StatefulWidget {
  @override
  _RegistroUsuarioPageState createState() => _RegistroUsuarioPageState();
}

class _RegistroUsuarioPageState extends State<RegistroUsuarioPage> {
  List<Map<String, dynamic>> usuarios = [];

  String nombreCompleto = '';
  String rol = '';
  String cargo = '';
  String edificio = '';
  String tiempoCargo = '';
  String computador = '';
  String tiempoComputador = '';

  void _agregarUsuario() {
    usuarios.add({
      'Nombre Completo': nombreCompleto,
      'Rol': rol,
      'Cargo': cargo,
      'Edificio': edificio,
      'Tiempo en el Cargo': tiempoCargo,
      'Computador': computador,
      'Tiempo con el Computador': tiempoComputador,
    });

    setState(() {
      nombreCompleto = '';
      rol = '';
      cargo = '';
      edificio = '';
      tiempoCargo = '';
      computador = '';
      tiempoComputador = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de Usuarios'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Nombre Completo'),
            onChanged: (value) => nombreCompleto = value,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Rol'),
            onChanged: (value) => rol = value,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Cargo'),
            onChanged: (value) => cargo = value,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Edificio'),
            onChanged: (value) => edificio = value,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Tiempo en el Cargo'),
            onChanged: (value) => tiempoCargo = value,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Computador'),
            onChanged: (value) => computador = value,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Tiempo con el Computador'),
            onChanged: (value) => tiempoComputador = value,
          ),
          ElevatedButton(
            onPressed: _agregarUsuario,
            child: Text('Agregar Usuario'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: usuarios.length,
              itemBuilder: (context, index) {
                final usuario = usuarios[index];
                return ListTile(
                  title: Text(usuario['Nombre Completo']),
                  subtitle: Text('Cargo: ${usuario['Cargo']}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}