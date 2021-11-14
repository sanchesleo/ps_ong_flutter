import 'package:flutter/material.dart';

Card listTileContent(context, String title, String screen, String reportTitle) {
  return Card(
    margin: const EdgeInsets.symmetric(horizontal: 20),
    elevation: 10,
    child: ListTile(
      leading: const Icon(
        Icons.alarm_add,
        color: Color.fromRGBO(77, 114, 152, 1),
      ),
      title: Text(
        title,
        style: const TextStyle(
          color: Color.fromRGBO(77, 114, 152, 1),
          fontSize: 20,
        ),
      ),
      tileColor: const Color.fromRGBO(207, 152, 52, 1),
      trailing: const Icon(
        Icons.play_arrow,
        color: Color.fromRGBO(77, 114, 152, 1),
      ),
      onTap: () {
        Navigator.pushNamed(
          context,
          screen,
          arguments: reportTitle,
        );
      },
    ),
  );
}
