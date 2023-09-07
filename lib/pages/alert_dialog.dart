import 'package:flutter/material.dart';

void main() => runApp(const AlertDialog());

class AlertDialogW extends StatelessWidget {
  const AlertDialogW({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Crea un Scaffold para contener el AlertDialog
      appBar: AppBar(
        title: const Text(
            'Ejemplo de Alert Dialog'), // Título de la barra de aplicación
      ),
      body: Center(
        child: TextButton(
          onPressed: () => showDialog<String>(
            context: context, // Obtiene el contexto actual
            builder: (BuildContext context) => AlertDialog(
              title: const Text('ALERT DIALOG'), // Título del cuadro de diálogo
              content: const Text(
                  'Este widget muestra un cuadro de diálogo de alerta cuando se presiona un botón y contiene un título y un mensaje con opciones "OK" y "Cancelar"'), // Contenido del cuadro de diálogo
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context,
                      'Cancel'), // Botón "Cancelar" que cierra el cuadro de diálogo y devuelve 'Cancel'
                  child: const Text('Cancel'), // Texto del botón "Cancelar"
                ),
                TextButton(
                  onPressed: () => Navigator.pop(context,
                      'OK'), // Botón "OK" que cierra el cuadro de diálogo y devuelve 'OK'
                  child: const Text('OK'), // Texto del botón "OK"
                ),
              ],
            ),
          ),
          child: const Text(
              'MOSTRAR'), // Texto en el botón que muestra el cuadro de diálogo
        ),
      ),
    );
  }
}
