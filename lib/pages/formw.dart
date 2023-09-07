import 'package:flutter/material.dart';

class FormW extends StatefulWidget {
  const FormW({super.key});

  @override
  State<FormW> createState() => _FormWState();
}

class _FormWState extends State<FormW> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Agregamos un Scaffold alrededor del contenido
      appBar: AppBar(
        title: const Text('Ejemplo de Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Text(
                // Texto agregado antes de los elementos
                'Form se utiliza para crear un grupo de campos de entrada y permite realizar validaciones y acciones específicas cuando se envía el formulario:',
                style: TextStyle(fontSize: 18.0),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  hintText:
                      'Ingrese su correo', // Placeholder del TextFormField
                ),
                validator: (String? value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, ingrese un correo válido';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Validate will return true if the form is valid, or false if
                    // the form is invalid.
                    if (_formKey.currentState!.validate()) {
                      // Procesar los datos si el formulario es válido
                    }
                  },
                  child: const Text('Enviar'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
