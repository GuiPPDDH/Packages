import 'package:flutter/material.dart';
//import 'package:flutter_modular/flutter_modular.dart';

class ProdutoPage extends StatelessWidget {
  final String? nome;

  const ProdutoPage({this.nome, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produto'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //Text(Modular.args.params['nome']),
          Text(nome ?? 'Nome não enviado'),
        ],
      ),
    );
  }
}
