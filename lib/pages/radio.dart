import 'package:flutter/material.dart';

// Enumeración que define las opciones de radio
enum SingingCharacter { Control, MouseTeclado }

class RadioW extends StatefulWidget {
  const RadioW({super.key});

  @override
  State<RadioW> createState() => _RadioWState();
}

class _RadioWState extends State<RadioW> {
  SingingCharacter? _character; // Deja de inicializarlo automáticamente

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Ejemplo de Radio'), // Título de la barra de aplicación
      ),
      body: Column(
        children: <Widget>[
          // Texto "Radio1" con tamaño de fuente de 20
          const Text(
            'Radio se utiliza para representar un conjunto de opciones mutuamente excluyentes en forma de botones de selección.'
            'Se utiliza cuando el usuario debe elegir una sola opción de un conjunto de opciones disponibles',
            style: TextStyle(fontSize: 20),
          ),
          ListTile(
            title: const Text('Control'), // Opción de radio "Control"
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.Control, // Valor de esta opción
              groupValue: _character, // Valor seleccionado en el grupo
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value; // Actualiza el valor seleccionado
                });
              },
            ),
          ),
          ListTile(
            title: const Text(
                'Mouse & Teclado'), // Opción de radio "Mouse & Teclado"
            leading: Radio<SingingCharacter>(
              value: SingingCharacter.MouseTeclado, // Valor de esta opción
              groupValue: _character, // Valor seleccionado en el grupo
              onChanged: (SingingCharacter? value) {
                setState(() {
                  _character = value; // Actualiza el valor seleccionado
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
