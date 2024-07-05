import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.amber,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.red, Color.fromARGB(255, 88, 233, 30)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: const Center(
            child: Text(
              'Hello CJ',
              style: TextStyle(color: Colors.blue, fontSize: 27),
            ),
          ),
        ),
      ),
    ),
  );
}

//runApp();