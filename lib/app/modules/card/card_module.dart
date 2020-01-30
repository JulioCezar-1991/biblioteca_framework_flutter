import 'package:app_flutter_biblioteca/app/modules/card/card_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:app_flutter_biblioteca/app/modules/card/card_page.dart';

class CardModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CardController()),
      ];

  @override
  List<Router> get routers => [
        Router('/card', child: (_, args) => CardPage()),
      ];

  static Inject get to => Inject<CardModule>.of();
}