import 'package:flutter/material.dart';

import 'screens/clima_atual.dart';
import 'screens/previsao_semana.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ClimaApp')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ClimaAtualScreen()),
              );
            },
            child: Text('Clima atual'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PrevisaoSemanaScreen()),
              );
            },
            child: Text('Previsão da semana'),
          ),
        ],
      ),
    );
  }
}
