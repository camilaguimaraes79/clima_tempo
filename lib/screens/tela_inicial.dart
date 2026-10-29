import 'package:flutter/material.dart';

import '../widgets/card_cidade.dart';
import '../widgets/card_cidade_principal.dart';
import 'detalhes_sao_paulo.dart';
import 'detalhes_rio.dart';
import 'detalhes_curitiba.dart';
import 'detalhes_salvador.dart';

class TelaInicialScreen extends StatelessWidget {
  const TelaInicialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ClimaApp')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          CardCidadePrincipal(
            nome: 'São Paulo',
            temperatura: '24°C',
            minima: '18°C',
            maxima: '27°C',
            icone: Icons.cloud,
            umidade: '68%',
            vento: '12 km/h',
            chuva: '40%',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetalhesSaoPauloScreen()),
              );
            },
          ),
          SizedBox(height: 16),
          Center(child: Text('Toque na cidade para ver mais')),
          SizedBox(height: 8),
          CardCidade(
            nome: 'Rio de Janeiro',
            temperatura: '29°C',
            minima: '23°C',
            maxima: '32°C',
            umidade: '74%',
            vento: '15 km/h',
            chuva: '20%',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetalhesRioScreen()),
              );
            },
          ),
          CardCidade(
            nome: 'Curitiba',
            temperatura: '17°C',
            minima: '12°C',
            maxima: '21°C',
            umidade: '82%',
            vento: '10 km/h',
            chuva: '70%',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetalhesCuritibaScreen()),
              );
            },
          ),
          CardCidade(
            nome: 'Salvador',
            temperatura: '30°C',
            minima: '25°C',
            maxima: '32°C',
            umidade: '78%',
            vento: '18 km/h',
            chuva: '15%',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetalhesSalvadorScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}