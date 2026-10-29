import 'package:flutter/material.dart';

import '../widgets/card_alerta.dart';
import '../widgets/card_indicador.dart';
import '../widgets/imagem_cidade.dart';
import '../widgets/item_previsao_resumo.dart';
import '../widgets/titulo_secao.dart';
import 'previsao_curitiba.dart';

class DetalhesCuritibaScreen extends StatelessWidget {
  const DetalhesCuritibaScreen({super.key});

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
                'https://commons.wikimedia.org/wiki/Special:FilePath/Jardim_Botânico_de_Curitiba.jpg?width=600',
            temperatura: '17°C',
            icone: Icons.umbrella,
          ),
          Divider(),
          TituloSecao(titulo: 'Alertas'),
          CardAlerta(
            icone: Icons.umbrella,
            titulo: 'Chuva contínua',
            descricao: 'Chuva fraca a moderada durante todo o dia',
          ),
          CardAlerta(
            icone: Icons.ac_unit,
            titulo: 'Frente fria',
            descricao: 'Queda de temperatura prevista para a noite',
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
                    builder: (context) => PrevisaoCuritibaScreen(),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Expanded(
                      child: ItemPrevisaoResumo(
                        minima: '12°C',
                        icone: Icons.umbrella,
                        maxima: '21°C',
                      ),
                    ),
                    Expanded(
                      child: ItemPrevisaoResumo(
                        minima: '10°C',
                        icone: Icons.cloud,
                        maxima: '18°C',
                      ),
                    ),
                    Expanded(
                      child: ItemPrevisaoResumo(
                        minima: '9°C',
                        icone: Icons.wb_sunny,
                        maxima: '20°C',
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
              CardIndicador(icone: Icons.wb_sunny, valor: '2', nome: 'Índice UV'),
              CardIndicador(icone: Icons.speed, valor: '1017 hPa', nome: 'Pressão'),
              CardIndicador(icone: Icons.visibility, valor: '6 km', nome: 'Visibilidade'),
              CardIndicador(icone: Icons.wb_twilight, valor: '06:02', nome: 'Nascer do sol'),
            ],
          ),
        ],
      ),
    );
  }
}