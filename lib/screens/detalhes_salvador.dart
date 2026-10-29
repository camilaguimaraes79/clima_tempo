import 'package:flutter/material.dart';

import '../widgets/card_alerta.dart';
import '../widgets/card_indicador.dart';
import '../widgets/imagem_cidade.dart';
import '../widgets/item_previsao_resumo.dart';
import '../widgets/titulo_secao.dart';
import 'previsao_salvador.dart';

class DetalhesSalvadorScreen extends StatelessWidget {
  const DetalhesSalvadorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detalhes avançados')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TituloSecao(titulo: 'Condição do tempo'),
          SizedBox(height: 8),
          ImagemCidade(
            url:
                'https://commons.wikimedia.org/wiki/Special:FilePath/Pelourinho,_Salvador.jpg?width=600',
            temperatura: '30°C',
            icone: Icons.wb_sunny,
          ),
          Divider(),
          TituloSecao(titulo: 'Alertas'),
          CardAlerta(
            icone: Icons.wb_sunny,
            titulo: 'UV muito alto',
            descricao: 'Use protetor solar entre 10h e 15h',
          ),
          CardAlerta(
            icone: Icons.air,
            titulo: 'Vento moderado',
            descricao: 'Rajadas de até 35 km/h à tarde',
          ),
          Divider(),
          TituloSecao(titulo: 'Previsão da semana'),
          SizedBox(height: 8),
          Card(
            elevation: 2,
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PrevisaoSalvadorScreen(),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Expanded(
                      child: ItemPrevisaoResumo(
                        minima: '25°C',
                        icone: Icons.wb_sunny,
                        maxima: '32°C',
                      ),
                    ),
                    Expanded(
                      child: ItemPrevisaoResumo(
                        minima: '25°C',
                        icone: Icons.cloud,
                        maxima: '31°C',
                      ),
                    ),
                    Expanded(
                      child: ItemPrevisaoResumo(
                        minima: '24°C',
                        icone: Icons.wb_sunny,
                        maxima: '32°C',
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Divider(),
          TituloSecao(titulo: 'Indicadores'),
          GridView.count(
            crossAxisCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            children: [
              CardIndicador(icone: Icons.wb_sunny, valor: '10', nome: 'Índice UV'),
              CardIndicador(icone: Icons.speed, valor: '1010 hPa', nome: 'Pressão'),
              CardIndicador(icone: Icons.visibility, valor: '14 km', nome: 'Visibilidade'),
              CardIndicador(icone: Icons.wb_twilight, valor: '05:21', nome: 'Nascer do sol'),
            ],
          ),
        ],
      ),
    );
  }
}