import 'package:flutter/material.dart';

import '../widgets/titulo_secao.dart';

class DetalhesAvancadosScreen extends StatelessWidget {
  const DetalhesAvancadosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalhes avançados')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TituloSecao(titulo: 'Alertas'),
          Card(
            elevation: 2,
            child: ListTile(
              leading: Icon(Icons.warning),
              title: Text('Chuva forte'),
              subtitle: Text('Previsto para hoje, a partir das 18h'),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
          Card(
            elevation: 2,
            child: ListTile(
              leading: Icon(Icons.air),
              title: Text('Vento forte'),
              subtitle: Text('Rajadas de até 50 km/h a partir das 20h'),
              trailing: Icon(Icons.chevron_right),
            ),
          ),
          Divider(),
          TituloSecao(titulo: 'Indicadores'),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              Card(
                elevation: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.wb_sunny),
                    Text('6'),
                    Text('Índice UV'),
                  ],
                ),
              ),
              Card(
                elevation: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.speed),
                    Text('1013 hPa'),
                    Text('Pressão'),
                  ],
                ),
              ),
              Card(
                elevation: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.visibility),
                    Text('10 km'),
                    Text('Visibilidade'),
                  ],
                ),
              ),
              Card(
                elevation: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.wb_twilight),
                    Text('05:48'),
                    Text('Nascer do sol'),
                  ],
                ),
              ),
            ],
          ),
          Divider(),
          TituloSecao(titulo: 'Condição do tempo'),
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Image.network(
                'https://commons.wikimedia.org/wiki/Special:FilePath/Bluesky.jpg?width=400',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                left: 16,
                bottom: 16,
                child: Text(
                  '26°C',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Positioned(
                top: 16,
                right: 16,
                child: Icon(Icons.wb_sunny, color: Colors.white, size: 32),
              ),
            ],
          ),
          Divider(),
          TituloSecao(titulo: 'Tags'),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              Chip(avatar: Icon(Icons.water_drop), label: Text('Chuva forte')),
              Chip(avatar: Icon(Icons.wb_sunny), label: Text('UV alto')),
              Chip(label: Text('Vento moderado')),
              Chip(label: Text('Umidade alta')),
              Chip(label: Text('Frente fria')),
            ],
          ),
        ],
      ),
    );
  }
}