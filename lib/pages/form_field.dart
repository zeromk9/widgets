import 'package:flutter/material.dart';

class FormFieldW extends StatelessWidget {
  const FormFieldW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Ingrese un valor',
        border: OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Este campo es obligatorio';
        }
        return null;
      },
      // Más propiedades y lógica según tus necesidades
    );
  }
}
