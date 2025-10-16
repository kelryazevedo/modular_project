import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_project/src/modules/home/home_module.dart';
import 'package:modular_project/src/modules/login/login_module.dart';

class AppModule extends Module {
  /// dependencies injection
  @override
  void binds(i) {}

  ///routes
  @override
  void routes(r) {
    r.module('/home', module: HomeModule());
    r.module('/login', module: LoginModule());
  }
}
