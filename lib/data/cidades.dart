import 'package:flutter/material.dart';

import '../models/cidade.dart';

// Para adicionar uma cidade nova, basta incluir mais um Cidade(...) nesta lista.
// Nenhuma tela precisa ser criada ou alterada.
final List<Cidade> cidades = [
  Cidade(
    nome: 'São Paulo',
    imagemUrl:
        'https://commons.wikimedia.org/wiki/Special:FilePath/Bairro_dos_jardins_em_são_paulo_(1)_(cropped).jpg?width=600',
    icone: Icons.cloud,
    temperatura: '24°C',
    minima: '18°C',
    maxima: '27°C',
    umidade: '68%',
    vento: '12 km/h',
    chuva: '40%',
    faixaMedia: '24°C',
    manha: '19°C',
    tarde: '27°C',
    proximosDias: [
      PrevisaoDia(dia: 'Quarta', icone: Icons.cloud, minima: '18°C', maxima: '27°C'),
      PrevisaoDia(dia: 'Quinta', icone: Icons.umbrella, minima: '17°C', maxima: '24°C'),
      PrevisaoDia(dia: 'Sexta', icone: Icons.wb_sunny, minima: '16°C', maxima: '26°C'),
      PrevisaoDia(dia: 'Sábado', icone: Icons.wb_sunny, minima: '17°C', maxima: '29°C'),
      PrevisaoDia(dia: 'Domingo', icone: Icons.cloud, minima: '18°C', maxima: '28°C'),
    ],
    alertas: [
      Alerta(
        icone: Icons.thunderstorm,
        titulo: 'Chuva forte',
        descricao: 'Previsto para hoje, a partir das 18h',
      ),
      Alerta(
        icone: Icons.air,
        titulo: 'Vento forte',
        descricao: 'Rajadas de até 50 km/h a partir das 20h',
      ),
    ],
    indicadores: [
      Indicador(icone: Icons.wb_sunny, valor: '6', nome: 'Índice UV'),
      Indicador(icone: Icons.speed, valor: '1013 hPa', nome: 'Pressão'),
      Indicador(icone: Icons.visibility, valor: '10 km', nome: 'Visibilidade'),
      Indicador(icone: Icons.wb_twilight, valor: '05:48', nome: 'Nascer do sol'),
    ],
  ),
  Cidade(
    nome: 'Rio de Janeiro',
    imagemUrl:

    'https://commons.wikimedia.org/wiki/Special:FilePath/Cristo_Redentor_-_Rio_de_Janeiro,_Brasil.jpg?width=600',
    icone: Icons.wb_sunny,
    temperatura: '29°C',
    minima: '23°C',
    maxima: '32°C',
    umidade: '74%',
    vento: '15 km/h',
    chuva: '20%',
    faixaMedia: '29°C',
    manha: '25°C',
    tarde: '32°C',
    proximosDias: [
      PrevisaoDia(dia: 'Quarta', icone: Icons.wb_sunny, minima: '23°C', maxima: '32°C'),
      PrevisaoDia(dia: 'Quinta', icone: Icons.wb_sunny, minima: '23°C', maxima: '33°C'),
      PrevisaoDia(dia: 'Sexta', icone: Icons.cloud, minima: '22°C', maxima: '30°C'),
      PrevisaoDia(dia: 'Sábado', icone: Icons.umbrella, minima: '21°C', maxima: '28°C'),
      PrevisaoDia(dia: 'Domingo', icone: Icons.cloud, minima: '22°C', maxima: '29°C'),
    ],
    alertas: [
      Alerta(
        icone: Icons.wb_sunny,
        titulo: 'Calor intenso',
        descricao: 'Sensação térmica de até 36°C entre 12h e 16h',
      ),
      Alerta(
        icone: Icons.waves,
        titulo: 'Mar agitado',
        descricao: 'Ondas de até 2 metros nas praias da Zona Sul',
      ),
    ],
    indicadores: [
      Indicador(icone: Icons.wb_sunny, valor: '9', nome: 'Índice UV'),
      Indicador(icone: Icons.speed, valor: '1011 hPa', nome: 'Pressão'),
      Indicador(icone: Icons.visibility, valor: '12 km', nome: 'Visibilidade'),
      Indicador(icone: Icons.wb_twilight, valor: '05:15', nome: 'Nascer do sol'),
    ],
  ),
  Cidade(
    nome: 'Curitiba',
    imagemUrl:
        'https://commons.wikimedia.org/wiki/Special:FilePath/Jardim_Botânico_de_Curitiba.jpg?width=600',
    icone: Icons.umbrella,
    temperatura: '17°C',
    minima: '12°C',
    maxima: '21°C',
    umidade: '82%',
    vento: '10 km/h',
    chuva: '70%',
    faixaMedia: '17°C',
    manha: '13°C',
    tarde: '20°C',
    proximosDias: [
      PrevisaoDia(dia: 'Quarta', icone: Icons.umbrella, minima: '12°C', maxima: '21°C'),
      PrevisaoDia(dia: 'Quinta', icone: Icons.cloud, minima: '10°C', maxima: '18°C'),
      PrevisaoDia(dia: 'Sexta', icone: Icons.wb_sunny, minima: '9°C', maxima: '20°C'),
      PrevisaoDia(dia: 'Sábado', icone: Icons.wb_sunny, minima: '10°C', maxima: '23°C'),
      PrevisaoDia(dia: 'Domingo', icone: Icons.cloud, minima: '12°C', maxima: '22°C'),
    ],
    alertas: [
      Alerta(
        icone: Icons.umbrella,
        titulo: 'Chuva contínua',
        descricao: 'Chuva fraca a moderada durante todo o dia',
      ),
      Alerta(
        icone: Icons.ac_unit,
        titulo: 'Frente fria',
        descricao: 'Queda de temperatura prevista para a noite',
      ),
    ],
    indicadores: [
      Indicador(icone: Icons.wb_sunny, valor: '2', nome: 'Índice UV'),
      Indicador(icone: Icons.speed, valor: '1017 hPa', nome: 'Pressão'),
      Indicador(icone: Icons.visibility, valor: '6 km', nome: 'Visibilidade'),
      Indicador(icone: Icons.wb_twilight, valor: '06:02', nome: 'Nascer do sol'),
    ],
  ),
  Cidade(
    nome: 'Salvador',
    imagemUrl:
        'https://commons.wikimedia.org/wiki/Special:FilePath/Pelourinho,_Salvador.jpg?width=600',
    icone: Icons.wb_sunny,
    temperatura: '30°C',
    minima: '25°C',
    maxima: '32°C',
    umidade: '78%',
    vento: '18 km/h',
    chuva: '15%',
    faixaMedia: '30°C',
    manha: '26°C',
    tarde: '31°C',
    proximosDias: [
      PrevisaoDia(dia: 'Quarta', icone: Icons.wb_sunny, minima: '25°C', maxima: '32°C'),
      PrevisaoDia(dia: 'Quinta', icone: Icons.cloud, minima: '25°C', maxima: '31°C'),
      PrevisaoDia(dia: 'Sexta', icone: Icons.wb_sunny, minima: '24°C', maxima: '32°C'),
      PrevisaoDia(dia: 'Sábado', icone: Icons.wb_sunny, minima: '25°C', maxima: '33°C'),
      PrevisaoDia(dia: 'Domingo', icone: Icons.umbrella, minima: '24°C', maxima: '30°C'),
    ],
    alertas: [
      Alerta(
        icone: Icons.wb_sunny,
        titulo: 'UV muito alto',
        descricao: 'Use protetor solar entre 10h e 15h',
      ),
      Alerta(
        icone: Icons.air,
        titulo: 'Vento moderado',
        descricao: 'Rajadas de até 35 km/h à tarde',
      ),
    ],
    indicadores: [
      Indicador(icone: Icons.wb_sunny, valor: '10', nome: 'Índice UV'),
      Indicador(icone: Icons.speed, valor: '1010 hPa', nome: 'Pressão'),
      Indicador(icone: Icons.visibility, valor: '14 km', nome: 'Visibilidade'),
      Indicador(icone: Icons.wb_twilight, valor: '05:21', nome: 'Nascer do sol'),
    ],
  ),
];