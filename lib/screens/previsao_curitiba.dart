import 'package:flutter/material.dart';

import '../widgets/item_previsao_dia.dart';
import '../widgets/titulo_secao.dart';

class PrevisaoCuritibaScreen extends StatelessWidget {
  const PrevisaoCuritibaScreen({super.key});

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
                  child: Center(child: Text('12°C')),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  height: 60,
                  color: Colors.amber.shade300,
                  child: Center(child: Text('17°C')),
                ),
              ),
              Expanded(
                child: Container(
                  height: 60,
                  color: Colors.deepOrange.shade300,
                  child: Center(child: Text('21°C')),
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
                    child: Center(child: Text('Manhã: 13°C')),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.orange.shade200,
                    child: Center(child: Text('Tarde: 20°C')),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          TituloSecao(titulo: 'Próximos dias'),
          ItemPrevisaoDia(
            dia: 'Quarta',
            icone: Icons.umbrella,
            minima: '12°C',
            maxima: '21°C',
          ),
          ItemPrevisaoDia(
            dia: 'Quinta',
            icone: Icons.cloud,
            minima: '10°C',
            maxima: '18°C',
          ),
          ItemPrevisaoDia(
            dia: 'Sexta',
            icone: Icons.wb_sunny,
            minima: '9°C',
            maxima: '20°C',
          ),
          ItemPrevisaoDia(
            dia: 'Sábado',
            icone: Icons.wb_sunny,
            minima: '10°C',
            maxima: '23°C',
          ),
          ItemPrevisaoDia(
            dia: 'Domingo',
            icone: Icons.cloud,
            minima: '12°C',
            maxima: '22°C',
          ),
        ],
      ),
    );
  }
}