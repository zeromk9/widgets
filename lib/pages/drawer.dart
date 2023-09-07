import 'package:flutter/material.dart';

class DrawerW extends StatelessWidget {
  const DrawerW({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Drawer Header'),
          ),
          ListTile(
            title: const Text('Item 1'),
            onTap: () {
              // Lógica al hacer clic en Item 1
            },
          ),
          ListTile(
            title: const Text('Item 2'),
            onTap: () {
              // Lógica al hacer clic en Item 2
            },
          ),
        ],
      ),
    );
  }
}
