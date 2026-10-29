import 'package:flutter/material.dart';

import '../widgets/item_previsao_dia.dart';
import '../widgets/titulo_secao.dart';

class PrevisaoSaoPauloScreen extends StatelessWidget {
  const PrevisaoSaoPauloScreen({super.key});

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
                  child: Center(child: Text('18°C')),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  height: 60,
                  color: Colors.amber.shade300,
                  child: Center(child: Text('24°C')),
                ),
              ),
              Expanded(
                child: Container(
                  height: 60,
                  color: Colors.deepOrange.shade300,
                  child: Center(child: Text('27°C')),
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
                    child: Center(child: Text('Manhã: 19°C')),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.orange.shade200,
                    child: Center(child: Text('Tarde: 27°C')),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          TituloSecao(titulo: 'Próximos dias'),
          ItemPrevisaoDia(
            dia: 'Quarta',
            icone: Icons.cloud,
            minima: '18°C',
            maxima: '27°C',
          ),
          ItemPrevisaoDia(
            dia: 'Quinta',
            icone: Icons.umbrella,
            minima: '17°C',
            maxima: '24°C',
          ),
          ItemPrevisaoDia(
            dia: 'Sexta',
            icone: Icons.wb_sunny,
            minima: '16°C',
            maxima: '26°C',
          ),
          ItemPrevisaoDia(
            dia: 'Sábado',
            icone: Icons.wb_sunny,
            minima: '17°C',
            maxima: '29°C',
          ),
          ItemPrevisaoDia(
            dia: 'Domingo',
            icone: Icons.cloud,
            minima: '18°C',
            maxima: '28°C',
          ),
        ],
      ),
    );
  }
}