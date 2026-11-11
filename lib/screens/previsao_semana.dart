import 'package:flutter/material.dart';

import '../models/cidade.dart';
import '../widgets/item_previsao_dia.dart';
import '../widgets/titulo_secao.dart';

// Tela única: mostra a previsão da semana de QUALQUER cidade recebida.
class PrevisaoSemanaScreen extends StatelessWidget {
  final Cidade cidade;

  const PrevisaoSemanaScreen({super.key, required this.cidade});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Previsão da semana - ${cidade.nome}')),
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
                  child: Center(child: Text(cidade.minima)),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  height: 60,
                  color: Colors.amber.shade300,
                  child: Center(child: Text(cidade.faixaMedia)),
                ),
              ),
              Expanded(
                child: Container(
                  height: 60,
                  color: Colors.deepOrange.shade300,
                  child: Center(child: Text(cidade.maxima)),
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
                    child: Center(child: Text('Manhã: ${cidade.manha}')),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.orange.shade200,
                    child: Center(child: Text('Tarde: ${cidade.tarde}')),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          TituloSecao(titulo: 'Próximos dias'),
          ...cidade.proximosDias.map(
            (dia) => ItemPrevisaoDia(
              dia: dia.dia,
              icone: dia.icone,
              minima: dia.minima,
              maxima: dia.maxima,
            ),
          ),
        ],
      ),
    );
  }
}