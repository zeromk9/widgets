import 'package:flutter/material.dart';

class CheckboxW extends StatefulWidget {
  const CheckboxW({super.key});

  @override
  State<CheckboxW> createState() => _CheckboxWState();
}

class _CheckboxWState extends State<CheckboxW> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue; // Cambia el color del cuadro a azul en interacción
      }
      // Cambia el color del cuadro a verde cuando está marcado, de lo contrario, es rojo
      if (isChecked) {
        return Colors.green;
      }
      return Colors.red;
    }

    return Scaffold(
      // Agrega un Scaffold alrededor del contenido
      appBar: AppBar(
        title: const Text(
            'Ejemplo de CheckBox'), // Título de la barra de aplicación
      ),
      body: Column(
        children: <Widget>[
          const Text('CHECKBOX',
              style: TextStyle(fontSize: 18.0)), // Texto "CHECKBOX" con estilo
          const Text(
            'Representa una casilla de verificación que se puede marcar o desmarcar. Cambia su estado cuando se toca',
            style: TextStyle(fontSize: 18.0),
          ), // Texto descriptivo con estilo
          const SizedBox(height: 10.0), // Espacio entre los textos
          const Text(
            'DA CLICK PARA MARCAR O DESMARCAR',
            style: TextStyle(fontSize: 18.0),
          ), // Texto para marcar o desmarcar con estilo
          const SizedBox(
              height: 10.0), // Espacio entre "Checkbox3" y el Checkbox
          Padding(
            padding: const EdgeInsets.only(
                top: 20.0), // Añadir espacio superior al Checkbox
            child: Checkbox(
              checkColor: Colors.white,
              fillColor: MaterialStateProperty.resolveWith(
                  getColor), // Cambia el color del cuadro
              value: isChecked, // Valor del CheckBox
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
