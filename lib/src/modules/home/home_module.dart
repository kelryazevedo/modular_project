import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_project/src/modules/core/core_module.dart';
import 'package:modular_project/src/modules/home/home_page.dart';

class HomeModule extends Module {
  @override
  List<Module> get imports => [CoreModule()];

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomePage());
    r.child('/:id', child: (context) => const HomePage());
  }
}
