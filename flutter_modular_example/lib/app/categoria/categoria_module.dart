import 'package:flutter_example_example/app/categoria/categoria_page.dart';
import 'package:flutter_example_example/app/categoria/model/categoria_controller.dart';
import 'package:flutter_example_example/app/categoria/model/preco_model.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CategoriaModule extends Module {
  //*Dependencias
  @override
  void binds(Injector i) => [
        i.addLazySingleton(PrecoModel.new),
        i.addLazySingleton(
          CategoriaController.new,
          //CategoriaController(precoModel: i.get()),
          //*Pode ser criado a instancia de i() pois ele é uma callable class
          //CategoriaController(precoModel: i()),
        ),
      ];

  //*Rotas
  @override
  void routes(RouteManager r) => [
        /*ChildRoute(
          Modular.initialRoute,
          child: (context) => CategoriaPage(categoria: Modular.args.data),
        ),*/
        r.child(
          Modular.initialRoute,
          child: (context) => CategoriaPage(categoria: Modular.args.data),
        ),
      ];
}
