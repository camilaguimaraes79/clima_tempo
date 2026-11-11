import 'package:flutter/material.dart';
import '../models/cidade.dart';
import '../widgets/card_alerta.dart';
import '../widgets/card_indicador.dart';
import '../widgets/imagem_cidade.dart';
import '../widgets/item_previsao_resumo.dart';
import '../widgets/titulo_secao.dart';
import 'previsao_semana.dart';

// Tela única: mostra o clima de QUALQUER cidade que for recebida.
class VerClimaScreen extends StatelessWidget {
  final Cidade cidade;

  const VerClimaScreen({super.key, required this.cidade});

  @override
  Widget build(BuildContext context) {
    // O resumo mostra só os 3 primeiros dias da previsão da cidade.
    final resumo = cidade.proximosDias.take(3).toList();

    return Scaffold(
      appBar: AppBar(title: Text('Clima em ${cidade.nome}')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TituloSecao(titulo: 'Condição do tempo'),
          SizedBox(height: 8),
          ImagemCidade(
            url: cidade.imagemUrl,
            temperatura: cidade.temperatura,
            icone: cidade.icone,
          ),
          Divider(),
          TituloSecao(titulo: 'Alertas'),
          ...cidade.alertas.map(
            (alerta) => CardAlerta(
              icone: alerta.icone,
              titulo: alerta.titulo,
              descricao: alerta.descricao,
            ),
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
                    builder: (context) => PrevisaoSemanaScreen(cidade: cidade),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Row(
                  children: resumo
                      .map(
                        (dia) => Expanded(
                          child: ItemPrevisaoResumo(
                            minima: dia.minima,
                            icone: dia.icone,
                            maxima: dia.maxima,
                          ),
                        ),
                      )
                      .toList(),
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
            children: cidade.indicadores
                .map(
                  (i) => CardIndicador(
                    icone: i.icone,
                    valor: i.valor,
                    nome: i.nome,
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}