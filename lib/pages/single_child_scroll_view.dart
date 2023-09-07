import 'package:flutter/material.dart';

class SingleChildScView extends StatelessWidget {
  const SingleChildScView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Agrega un Scaffold alrededor del contenido
      appBar: AppBar(
        title: const Text(
            'Ejemplo SingleChildScrollView'), // Título de la barra de la aplicación
      ),
      body: DefaultTextStyle(
        style: Theme.of(context).textTheme.bodyMedium!,
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints viewportConstraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    const Text(
                        'SingleChildScView es un ejemplo de un widget de vista de desplazamiento'
                        'que contiene dos elementos con colores de fondo amarillo y verde, simbolizando una vista de desplazamiento de un solo hijo'),
                    Container(
                      // A fixed-height child.
                      color: const Color(0xffeeee00), // Amarillo
                      height: 120.0,
                      alignment: Alignment.center,
                      child: const Text('Fixed Height Content'),
                    ),
                    Container(
                      // Another fixed-height child.
                      color: const Color(0xff008000), // Verde
                      height: 120.0,
                      alignment: Alignment.center,
                      child: const Text('Fixed Height Content'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
