import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: "Mi primera app en Flutter"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  //Metodo para incrementar el contador
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  String titulo = "Mi primera app flutter";

  //Widget
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //AppBar
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title,
            style: const TextStyle(
                color: Colors.purpleAccent, fontWeight: FontWeight.bold)),
      ),

      //Body of the page
      body: Column(
        children: <Widget>[
          const Text(
            'Aumentar el contador',
            style: TextStyle(
                color: Colors.black45,
                fontSize: 32,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Text(
            '$_counter',
            style: const TextStyle(
                color: Colors.blue, fontWeight: FontWeight.bold, fontSize: 40),
          ),
          const Expanded(
            child: FittedBox(
              child: FlutterLogo(),
            ),
          ),
        ],
      ),

      //Boton de sumar
      floatingActionButton: FloatingActionButton(
        //Metodo al presionar
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        //Icono agregar
        child: const Icon(Icons.add),
      ),
    );
  }
}
