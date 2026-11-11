import 'package:flutter/material.dart';

// Previsão de um dia da semana (usada na lista "Próximos dias").
class PrevisaoDia {
  final String dia;
  final IconData icone;
  final String minima;
  final String maxima;

  PrevisaoDia({
    required this.dia,
    required this.icone,
    required this.minima,
    required this.maxima,
  });
}

// Alerta meteorológico (ex.: chuva forte).
class Alerta {
  final IconData icone;
  final String titulo;
  final String descricao;

  Alerta({required this.icone, required this.titulo, required this.descricao});
}

// Indicador (ex.: índice UV, pressão).
class Indicador {
  final IconData icone;
  final String valor;
  final String nome;

  Indicador({required this.icone, required this.valor, required this.nome});
}

// Todos os dados de UMA cidade. As telas só recebem um objeto Cidade
// e mostram o que estiver nele, então funcionam para qualquer cidade.
class Cidade {
  final String nome;
  final String imagemUrl;
  final IconData icone;
  final String temperatura;
  final String minima;
  final String maxima;
  final String umidade;
  final String vento;
  final String chuva;

  // Tela de previsão da semana
  final String faixaMedia; // faixa de temperatura: mínima / média / máxima
  final String manha;
  final String tarde;
  final List<PrevisaoDia> proximosDias;

  // Tela ver_clima
  final List<Alerta> alertas;
  final List<Indicador> indicadores;

  Cidade({
    required this.nome,
    required this.imagemUrl,
    required this.icone,
    required this.temperatura,
    required this.minima,
    required this.maxima,
    required this.umidade,
    required this.vento,
    required this.chuva,
    required this.faixaMedia,
    required this.manha,
    required this.tarde,
    required this.proximosDias,
    required this.alertas,
    required this.indicadores,
  });
}