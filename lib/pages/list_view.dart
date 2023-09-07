import 'package:flutter/material.dart';

class ListViewW extends StatelessWidget {
  const ListViewW({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('Ejemplo ListView'), // Título de la barra de aplicación
      ),
      body: Column(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              'ListView muestra una lista de elementos, en este caso, solo dos elementos de color amarillo y verde con texto fijo',
              style: TextStyle(fontSize: 20),
            ),
          ),
          ListView.builder(
            shrinkWrap: true,
            itemCount: 5, // Número de elementos en la lista
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Elemento $index'),
                onTap: () {
                  // Lógica al hacer clic en un elemento de la lista
                  // Aquí puedes agregar código para manejar la interacción con el elemento.
                  // Por ejemplo, abrir una nueva pantalla o realizar una acción específica.
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
