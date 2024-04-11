import 'package:flutter/material.dart';
import 'package:injecao_com_get_it/injection.dart';

import 'app_service.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  int currentInstance = locator<Singleton>().randomNumber;
                  print('singleton: $currentInstance');
                },
                child: const Icon(Icons.train_sharp)),
            const SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  int currentInstance = locator<Factory>().numero;
                  print('factory: $currentInstance');
                },
                child: const Icon(Icons.airplanemode_active_sharp))
          ],
        ),
      ),
    );
  }
}
