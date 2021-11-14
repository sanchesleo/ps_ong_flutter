import 'package:flutter/material.dart';

AppBar appBarComponent() {
  return AppBar(
    backgroundColor: const Color.fromRGBO(77, 114, 152, 1),
    title: Image.asset(
      'assets/images/logo.png',
      alignment: Alignment.center,
      height: 65,
      width: 65,
    ),
    centerTitle: true,
    leading: Builder(
      builder: (context) {
        return IconButton(
          icon: const Icon(
            Icons.menu,
            color: Color.fromRGBO(207, 152, 52, 1),
            size: 45,
          ),
          onPressed: () => Scaffold.of(context).openDrawer(),
        );
      },
    ),
  );
}
