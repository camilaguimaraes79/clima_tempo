import 'package:flutter/material.dart';
import 'package:clima_tempo/widgets/titulo_secao.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WeatherApp',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('WeatherApp'),
        ),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            TituloSecao(titulo: 'Cidade atual'),

            Text(
              'São Paulo',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            Text(
              'Quarta-feira, 21 de outubro',
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            Divider(),

            TituloSecao(titulo: 'Temperatura'),

            Text(
              '26°C',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),

            Text(
              'Sensação térmica: 28°C',
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            Divider(),

            TituloSecao(titulo: 'Condição do tempo'),

            Image.network(
              'https://images.unsplash.com/photo-1534088568595-a066f410bcda',
              height: 200,
            ),

            Divider(),

            TituloSecao(titulo: 'Detalhes'),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.water_drop,
                  color: Colors.blue,
                  size: 32,
                ),

                Icon(
                  Icons.air,
                  color: Colors.grey,
                  size: 32,
                ),

                Icon(
                  Icons.umbrella,
                  color: Colors.deepPurple,
                  size: 32,
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('65%'),
                Text('12 km/h'),
                Text('30%'),
              ],
            ),

            Divider(),

            TituloSecao(titulo: 'Atualização'),

            ElevatedButton(
              onPressed: () {},
              child: Text('Atualizar'),
            ),
          ],
        ),
      ),
    );
  }
}
