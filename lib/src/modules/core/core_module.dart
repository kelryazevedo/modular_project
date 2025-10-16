import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular_project/src/repositories/people/people_repository.dart';
import 'package:modular_project/src/repositories/people/people_repository_impl.dart';

class CoreModule extends Module {
  @override
  void exportedBinds(i) {
    i.addLazySingleton<PeopleRepository>(() => PeopleRepositoryImpl());
  }
}
