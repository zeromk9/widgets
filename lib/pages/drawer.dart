import 'package:flutter/material.dart';

class DrawerW extends StatelessWidget {
  const DrawerW({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Crea un Scaffold para contener el Drawer
      appBar: AppBar(
        title:
            const Text('Ejemplo de Drawer'), // Título de la barra de aplicación
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue, // Color del encabezado del Drawer
              ),
              child: Text(
                  'DRAWER:\nEste widget representa un cajón de navegación, que se abre desde el borde izquierdo y puede contener elementos de navegación o enlaces.'), // Texto del encabezado del Drawer
            ),
            ListTile(
              title: const Text('Elemento 1'), // Elemento 1 en el Drawer
              onTap: () {
                // Lógica al hacer clic en Item 1
              },
            ),
            ListTile(
              title: const Text('Elemento 2'), // Elemento 2 en el Drawer
              onTap: () {
                // Lógica al hacer clic en Item 2
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(''), // Cuerpo vacío en el Scaffold
      ),
    );
  }
}
