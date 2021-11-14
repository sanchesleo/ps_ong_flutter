import 'package:flutter/material.dart';

class FooterApp extends StatelessWidget {
  const FooterApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Color.fromRGBO(77, 114, 152, 1),
      ),
      child: const Text(
        '© - ONU',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color.fromRGBO(207, 152, 52, 1),
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
