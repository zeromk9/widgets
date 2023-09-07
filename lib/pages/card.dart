import 'package:flutter/material.dart';

class CardW extends StatelessWidget {
  const CardW({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Ejemplo de Tarjeta (Card)'), // Título de la barra de aplicación
      ),
      body: Center(
        child: Card(
          child: Column(
            mainAxisSize:
                MainAxisSize.min, // Controla el tamaño del widget Column
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.album), // Icono a la izquierda del título
                title: Text('CARD'), // Título de la tarjeta
                subtitle: Text(
                    'Muestra una tarjeta con un título, un subtítulo y botones "Comprar entradas" y "Escuchar", simulando un diseño de tarjeta.'), // Subtítulo de la tarjeta
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .end, // Alinea los elementos a la derecha en la fila
                children: <Widget>[
                  TextButton(
                    child: const Text(
                        'COMPRAR ENTRADAS'), // Texto del primer botón
                    onPressed: () {
                      /* ... */
                    }, // Acción al hacer clic en el botón
                  ),
                  const SizedBox(
                      width: 8), // Espacio horizontal entre los botones
                  TextButton(
                    child: const Text('ESCUCHAR'), // Texto del segundo botón
                    onPressed: () {
                      /* ... */
                    }, // Acción al hacer clic en el botón
                  ),
                  const SizedBox(
                      width: 8), // Espacio horizontal entre los botones
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
