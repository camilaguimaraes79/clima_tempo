import 'package:flutter/material.dart';

import '../widgets/card_alerta.dart';
import '../widgets/card_indicador.dart';
import '../widgets/imagem_cidade.dart';
import '../widgets/item_previsao_resumo.dart';
import '../widgets/titulo_secao.dart';
import 'previsao_rio.dart';

class DetalhesRioScreen extends StatelessWidget {
  const DetalhesRioScreen({super.key});

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
                'https://commons.wikimedia.org/wiki/Special:FilePath/Cristo_Redentor_-_Rio_de_Janeiro,_Brasil.jpg?width=600',
            temperatura: '29°C',
            icone: Icons.wb_sunny,
          ),
          Divider(),
          TituloSecao(titulo: 'Alertas'),
          CardAlerta(
            icone: Icons.wb_sunny,
            titulo: 'Calor intenso',
            descricao: 'Sensação térmica de até 36°C entre 12h e 16h',
          ),
          CardAlerta(
            icone: Icons.waves,
            titulo: 'Mar agitado',
            descricao: 'Ondas de até 2 metros nas praias da Zona Sul',
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
                    builder: (context) => PrevisaoRioScreen(),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Expanded(
                      child: ItemPrevisaoResumo(
                        minima: '23°C',
                        icone: Icons.wb_sunny,
                        maxima: '32°C',
                      ),
                    ),
                    Expanded(
                      child: ItemPrevisaoResumo(
                        minima: '23°C',
                        icone: Icons.wb_sunny,
                        maxima: '33°C',
                      ),
                    ),
                    Expanded(
                      child: ItemPrevisaoResumo(
                        minima: '22°C',
                        icone: Icons.cloud,
                        maxima: '30°C',
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
              CardIndicador(icone: Icons.wb_sunny, valor: '9', nome: 'Índice UV'),
              CardIndicador(icone: Icons.speed, valor: '1011 hPa', nome: 'Pressão'),
              CardIndicador(icone: Icons.visibility, valor: '12 km', nome: 'Visibilidade'),
              CardIndicador(icone: Icons.wb_twilight, valor: '05:15', nome: 'Nascer do sol'),
            ],
          ),
        ],
      ),
    );
  }
}