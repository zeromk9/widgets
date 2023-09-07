import 'package:flutter/material.dart';

class FormFieldW extends StatelessWidget {
  const FormFieldW({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ejemplo de Form Field'),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 20.0), // Espacio antes del texto "FormField1"
          const Text(
            'FormField se utiliza para construir un campo de entrada de formulario.'
            'Proporciona una manera de interactuar con el usuario y recopilar datos de entrada en una variedad de formas, como texto, números, contraseñas, etc.',
            style: TextStyle(fontSize: 20.0), // Aumenta el tamaño del texto
          ), // Texto "FormField1" con estilo
          const SizedBox(
              height: 10.0), // Espacio entre el texto y el TextFormField
          TextFormField(
            decoration: const InputDecoration(
              labelText: 'Ingresa un valor', // Label del TextFormField
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Este campo es obligatorio';
              }
              return null;
            },
            // Más propiedades y lógica según tus necesidades
          ),
        ],
      ),
    );
  }
}
