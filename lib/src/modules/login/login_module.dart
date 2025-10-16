import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_project/src/modules/core/core_module.dart';
import 'package:modular_project/src/modules/login/login_page.dart';

class LoginModule extends Module {
  @override
  List<Module> get imports => [CoreModule()];
  @override
  void routes(r) {
    r.child('/', child: (context) => const LoginPage());
  }
}
