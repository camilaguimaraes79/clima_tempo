import 'package:flutter/material.dart';

import '../widgets/item_previsao_dia.dart';
import '../widgets/titulo_secao.dart';

class PrevisaoRioScreen extends StatelessWidget {
  const PrevisaoRioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Previsão da semana')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TituloSecao(titulo: 'Faixa de temperatura'),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 60,
                  color: Colors.lightBlue.shade200,
                  child: Center(child: Text('23°C')),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  height: 60,
                  color: Colors.amber.shade300,
                  child: Center(child: Text('29°C')),
                ),
              ),
              Expanded(
                child: Container(
                  height: 60,
                  color: Colors.deepOrange.shade300,
                  child: Center(child: Text('32°C')),
                ),
              ),
            ],
          ),
          Divider(),
          TituloSecao(titulo: 'Resumo do dia'),
          Container(
            height: 200,
            color: Colors.grey.shade200,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.lightGreen.shade200,
                    child: Center(child: Text('Manhã: 25°C')),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.orange.shade200,
                    child: Center(child: Text('Tarde: 32°C')),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          TituloSecao(titulo: 'Próximos dias'),
          ItemPrevisaoDia(
            dia: 'Quarta',
            icone: Icons.wb_sunny,
            minima: '23°C',
            maxima: '32°C',
          ),
          ItemPrevisaoDia(
            dia: 'Quinta',
            icone: Icons.wb_sunny,
            minima: '23°C',
            maxima: '33°C',
          ),
          ItemPrevisaoDia(
            dia: 'Sexta',
            icone: Icons.cloud,
            minima: '22°C',
            maxima: '30°C',
          ),
          ItemPrevisaoDia(
            dia: 'Sábado',
            icone: Icons.umbrella,
            minima: '21°C',
            maxima: '28°C',
          ),
          ItemPrevisaoDia(
            dia: 'Domingo',
            icone: Icons.cloud,
            minima: '22°C',
            maxima: '29°C',
          ),
        ],
      ),
    );
  }
}