import 'package:flutter/material.dart';

class ComputadorPage extends StatefulWidget {
  @override
  _ComputadorPageState createState() => _ComputadorPageState();
}

class _ComputadorPageState extends State<ComputadorPage> {
  List<Map<String, dynamic>> computadoras = [];

  String marca = '';
  String tipoPC = '';
  String codigoRegistro = '';
  String anoIngreso = '';
  String procesador = '';

  void _agregarComputadora() {
    computadoras.add({
      'Marca': marca,
      'Tipo de PC': tipoPC,
      'Codigo de Registro': codigoRegistro,
      'Año de ingreso': anoIngreso,
      'Procesador': procesador,
    });

    setState(() {
      marca = '';
      tipoPC = '';
      codigoRegistro = '';
      anoIngreso = '';
      procesador = '';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registro de Computadoras'),
      ),
      body: Column(
        children: [
          TextField(
            decoration: InputDecoration(labelText: 'Marca'),
            onChanged: (value) => marca = value,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Tipo de PC'),
            onChanged: (value) => tipoPC = value,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Codigo de Registro'),
            onChanged: (value) => codigoRegistro = value,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Año de ingreso'),
            onChanged: (value) => anoIngreso = value,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Procesador'),
            onChanged: (value) => procesador = value,
          ),
          ElevatedButton(
            onPressed: _agregarComputadora,
            child: Text('Agregar Computadora'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: computadoras.length,
              itemBuilder: (context, index) {
                final computadora = computadoras[index];
                return ListTile(
                  title: Text(computadora['Marca']),
                  subtitle: Text('Tipo de PC: ${computadora['Tipo de PC']}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}