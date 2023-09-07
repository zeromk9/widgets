import 'package:flutter/material.dart';

class ListViewW extends StatelessWidget {
  const ListViewW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Número de elementos en la lista
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Elemento $index'),
          onTap: () {
            // Lógica al hacer clic en un elemento de la lista
          },
        );
      },
    );
  }
}
