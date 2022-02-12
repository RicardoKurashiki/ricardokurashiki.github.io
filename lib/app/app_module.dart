import 'package:flutter_modular/flutter_modular.dart';

import 'modules/home/home_module.dart';
import 'utils.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(PortfolioRoutes.home(false), module: HomeModule()),
  ];
}
