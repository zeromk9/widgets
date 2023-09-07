import 'package:flutter/material.dart';

// Importa las clases de los ejemplos
import 'alert_dialog.dart';
import 'card.dart';
import 'check_Box.dart';
import 'drawer.dart';
import 'form_field.dart';
import 'list_view.dart';
import 'show_date_picker.dart';
import 'single_child_scroll_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: BottomNavBar(),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Examples'),
      ),
      body: const _BottomNavigationBarExample(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'AlertDialog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Card',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'CheckBox',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Drawer',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.input),
            label: 'FormField',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'ListView',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.date_range),
            label: 'DatePicker',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_upward), // Cambia aquí
            label: 'ScrollView',
          ),
        ],
        currentIndex: _BottomNavigationBarExampleState.currentIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _BottomNavigationBarExampleState.onItemTapped,
      ),
    );
  }
}

class _BottomNavigationBarExample extends StatefulWidget {
  const _BottomNavigationBarExample();

  @override
  State<_BottomNavigationBarExample> createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<_BottomNavigationBarExample> {
  static int currentIndex = 0;

  static void onItemTapped(int index) {
    currentIndex = index;
  }

  final List<Widget> _widgetOptions = <Widget>[
    const AlertDialogW(),
    const CardW(),
    const CheckboxW(),
    const DrawerW(),
    const FormFieldW(),
    const ListViewW(),
    const DatePickerW(),
    const SingleChildScView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _widgetOptions.elementAt(currentIndex),
    );
  }
}
