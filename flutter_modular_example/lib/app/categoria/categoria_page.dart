import 'package:flutter/material.dart';
import 'package:flutter_example_example/app/categoria/model/categoria_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CategoriaPage extends StatefulWidget {
  final String? categoria;

  const CategoriaPage({this.categoria, super.key});

  @override
  State<CategoriaPage> createState() => _CategoriaPageState();
}

class _CategoriaPageState extends State<CategoriaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categoria'),
      ),
      body: Center(
        child: Column(
          children: [
            Text(widget.categoria ?? 'Não foi enviado a categoria'),
            TextButton(
              onPressed: () {
                var controller = Modular.get<CategoriaController>();
                print('Categoria Controller Hashcode: ${controller.hashCode}');
              },
              child: const Text(
                'GetController',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
