import 'package:flutter/material.dart';
import '../widgets/titulo_secao.dart';

class PrevisaoSemanaScreen extends StatelessWidget {
 const PrevisaoSemanaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Previsão da semana')),
      body: ListView(
        padding:  EdgeInsets.all(16),
        children: [
          TituloSecao(titulo: 'Faixa de temperatura'),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 60,
                  color: Colors.lightBlue.shade200,
                  child: Center(child: Text('18°C')),
                ),
              ),
              Flexible(
                flex: 2,
                child: Container(
                  height: 60,
                  color: Colors.amber.shade300,
                  child: Center(child: Text('26°C')),
                ),
              ),
              Expanded(
                child: Container(
                  height: 60,
                  color: Colors.deepOrange.shade300,
                  child: Center(child: Text('31°C')),
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
                    child: Center(child: Text('Manhã: 20°C')),
                  ),
                ),
                Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.orange.shade200,
                    child: Center(child: Text('Tarde: 29°C')),
                  ),
                ),
              ],
            ),
          ),
          Divider(),
          TituloSecao(titulo: 'Próximos dias'),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Expanded(flex: 2, child: Text('Sexta')),
                Icon(Icons.wb_sunny, size: 28),
                Expanded(child: Text('19°C')),
                Expanded(child: Text('30°C')),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Expanded(flex: 2, child: Text('Sábado')),
                Icon(Icons.cloud, size: 28),
                Expanded(child: Text('18°C')),
                Expanded(child: Text('27°C')),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Expanded(flex: 2, child: Text('Domingo')),
                Icon(Icons.umbrella, size: 28),
                Expanded(child: Text('17°C')),
                Expanded(child: Text('24°C')),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Expanded(flex: 2, child: Text('Segunda')),
                Icon(Icons.cloud, size: 28),
                Expanded(child: Text('16°C')),
                Expanded(child: Text('25°C')),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              children: [
                Expanded(flex: 2, child: Text('Terça')),
                Icon(Icons.wb_sunny, size: 28),
                Expanded(child: Text('18°C')),
                Expanded(child: Text('29°C')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}