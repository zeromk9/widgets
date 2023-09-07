import 'package:flutter/material.dart';

// Importa las clases de los ejemplos
import 'alert_dialog.dart';
import 'card.dart';
import 'check_Box.dart';
import 'drawer.dart';
import 'formw.dart';
import 'form_field.dart';
import 'list_view.dart';
import 'radio.dart';
import 'show_date_picker.dart';
import 'single_child_scroll_view.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Crea un Scaffold, una estructura de página común en Flutter
      appBar: AppBar(
        title: const Text(
            'EJEMPLOS DE WIDGETS:'), // Barra de aplicación con título
      ),
      body:
          const _BottomNavigationBar(), // Configura MaterialApp con BottomNavBar como página de inicio
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          // Barra de navegación inferior con ítems
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
            icon: Icon(Icons.info),
            label: 'Form',
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
            icon: Icon(Icons.list),
            label: 'Radio',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.date_range),
            label: 'DatePicker',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.arrow_upward),
            label: 'ScrollView',
          ),
        ],
        currentIndex: _BottomNavigationBarState.currentIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _BottomNavigationBarState
            .onItemTapped, // Función cuando se toca un ítem
      ),
    );
  }
}

class _BottomNavigationBar extends StatefulWidget {
  const _BottomNavigationBar();

  @override
  State<_BottomNavigationBar> createState() => _BottomNavigationBarState();
}

class _BottomNavigationBarState extends State<_BottomNavigationBar> {
  static int currentIndex = 0; //Índice inicial del ítem seleccionado

  static void onItemTapped(int index) {
    currentIndex = index; // Actualiza el índice cuando se toca un ítem
  }

  final List<Widget> _widgetOptions = <Widget>[
    //Lista de widgets a mostrar en la página
    const AlertDialogW(),
    const CardW(),
    const CheckboxW(),
    const DrawerW(),
    const FormW(),
    const FormFieldW(),
    const ListViewW(),
    const RadioW(),
    const DatePickerW(),
    const SingleChildScView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _widgetOptions.elementAt(
          currentIndex), // Muestra el widget correspondiente al ítem seleccionado
    );
  }
}
