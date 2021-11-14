import 'package:flutter/material.dart';

Drawer drawerComponentLogin() {
  return Drawer(
    child: ListView(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Color.fromRGBO(77, 114, 152, 1),
          ),
          child: Center(
            child: Text(
              'Por favor, faça login!',
              style: TextStyle(
                color: Color.fromRGBO(207, 152, 52, 1),
                fontSize: 21,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
