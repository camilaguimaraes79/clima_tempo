import 'package:flutter/material.dart';

import '../data/cidades.dart';
import '../models/cidade.dart';
import '../widgets/card_cidade.dart';
import '../widgets/card_cidade_principal.dart';
import 'ver_clima.dart';

class TelaInicialScreen extends StatelessWidget {
  const TelaInicialScreen({super.key});

  // Todas as cidades abrem a MESMA tela, mudando só a Cidade enviada.
  void _abrirCidade(BuildContext context, Cidade cidade) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => VerClimaScreen(cidade: cidade)),
    );
  }

  @override
  Widget build(BuildContext context) {
    final principal = cidades.first;
    final outras = cidades.skip(1);

    return Scaffold(
      appBar: AppBar(title: Text('ClimaApp')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          CardCidadePrincipal(
            nome: principal.nome,
            temperatura: principal.temperatura,
            minima: principal.minima,
            maxima: principal.maxima,
            icone: principal.icone,
            umidade: principal.umidade,
            vento: principal.vento,
            chuva: principal.chuva,
            onTap: () => _abrirCidade(context, principal),
          ),
          SizedBox(height: 16),
          Center(child: Text('Toque na cidade para ver mais')),
          SizedBox(height: 8),
          ...outras.map(
            (cidade) => CardCidade(
              nome: cidade.nome,
              temperatura: cidade.temperatura,
              minima: cidade.minima,
              maxima: cidade.maxima,
              umidade: cidade.umidade,
              vento: cidade.vento,
              chuva: cidade.chuva,
              onTap: () => _abrirCidade(context, cidade),
            ),
          ),
        ],
      ),
    );
  }
}