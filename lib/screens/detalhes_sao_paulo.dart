import 'package:flutter/material.dart';

import '../widgets/card_alerta.dart';
import '../widgets/card_indicador.dart';
import '../widgets/imagem_cidade.dart';
import '../widgets/item_previsao_resumo.dart';
import '../widgets/titulo_secao.dart';
import 'previsao_sao_paulo.dart';

class DetalhesSaoPauloScreen extends StatelessWidget {
  const DetalhesSaoPauloScreen({super.key});

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
            url: 'https://commons.wikimedia.org/wiki/Special:FilePath/Bairro_dos_jardins_em_são_paulo_(1)_(cropped).jpg?width=600',
            temperatura: '24°C',
            icone: Icons.cloud,
          ),
          Divider(),
          TituloSecao(titulo: 'Alertas'),
          CardAlerta(
            icone: Icons.thunderstorm,
            titulo: 'Chuva forte',
            descricao: 'Previsto para hoje, a partir das 18h',
          ),
          CardAlerta(
            icone: Icons.air,
            titulo: 'Vento forte',
            descricao: 'Rajadas de até 50 km/h a partir das 20h',
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
                    builder: (context) => PrevisaoSaoPauloScreen(),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Expanded(
                      child: ItemPrevisaoResumo(
                        minima: '18°C',
                        icone: Icons.cloud,
                        maxima: '27°C',
                      ),
                    ),
                    Expanded(
                      child: ItemPrevisaoResumo(
                        minima: '17°C',
                        icone: Icons.umbrella,
                        maxima: '24°C',
                      ),
                    ),
                    Expanded(
                      child: ItemPrevisaoResumo(
                        minima: '16°C',
                        icone: Icons.wb_sunny,
                        maxima: '26°C',
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
              CardIndicador(
                icone: Icons.wb_sunny,
                valor: '6',
                nome: 'Índice UV',
              ),
              CardIndicador(
                icone: Icons.speed,
                valor: '1013 hPa',
                nome: 'Pressão',
              ),
              CardIndicador(
                icone: Icons.visibility,
                valor: '10 km',
                nome: 'Visibilidade',
              ),
              CardIndicador(
                icone: Icons.wb_twilight,
                valor: '05:48',
                nome: 'Nascer do sol',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
