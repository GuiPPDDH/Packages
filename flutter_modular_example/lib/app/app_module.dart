import 'package:flutter_example_example/app/categoria/categoria_module.dart';
import 'package:flutter_example_example/app/produto/produto_module.dart';
import 'package:flutter_example_example/app/splash/splash_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  //*Dependencias
  //*As dependecias são compartilhadas para os módulos e seus sub-módulos
  //*No caso do AppModule que é o módulo principal, sempre vai ficar carregado e não vai morrer na aplicação.
  //*Ou seja, vai ficar sempre disponível até o usuário fechar a aplicação.
  @override
  void binds(Injector i) => const [];

  //*Rotas
  @override
  void routes(RouteManager r) => {
        r.child(
          Modular.initialRoute,
          child: (context) => const SplashPage(),
        ),
        r.module(
          '/categoria',
          module: CategoriaModule(),
        ),
        r.module(
          '/produto',
          module: ProdutoModule(),
        ),
      };
}

//** Hierarquia
//App
  //M1
    //Page 1
    //M2
      //Page 2
// */
