import 'package:flutter_example_example/app/produto/produto_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProdutoModule extends Module {
  //*Dependencias
  @override
  void binds(Injector i) => const [];

  //*Rotas
  @override
  void routes(RouteManager r) => [
        /*ChildRoute(
          '/:nome/xyz',
          child: (context) => ProdutoPage(
            nome: Modular.args.params['nome'],
          ),
        ),
        ChildRoute(
          '/xyz?nome=produtox&id=10',
          child: (context) => ProdutoPage(
            nome: Modular.args.queryParams['nome'],
          ),
        ),*/
        r.child(
          '/:nome/xyz',
          child: (context) => ProdutoPage(
            nome: Modular.args.params['nome'],
          ),
        ),
        r.child(
          '/xyz?nome=produtox&id=10',
          child: (context) => ProdutoPage(
            nome: Modular.args.queryParams['nome'],
          ),
        ),
      ];
}
