import 'package:app_flutter_biblioteca/app/modules/navigation/navigation_controller.dart';
import 'package:app_flutter_biblioteca/app/modules/navigation/pages/navigation_app_bar.dart';
import 'package:app_flutter_biblioteca/app/modules/navigation/pages/navigation_app_bar_bottom.dart';
import 'package:app_flutter_biblioteca/app/modules/navigation/pages/navigation_between.dart';
import 'package:app_flutter_biblioteca/app/modules/navigation/pages/navigation_bottom_sheet.dart';
import 'package:app_flutter_biblioteca/app/modules/navigation/pages/navigation_collapsible_toolbar.dart';
import 'package:app_flutter_biblioteca/app/modules/navigation/pages/navigation_drawer.dart';
import 'package:app_flutter_biblioteca/app/modules/navigation/pages/navigation_expansion_tile.dart';
import 'package:app_flutter_biblioteca/app/modules/navigation/pages/navigation_listview_builder.dart';
import 'package:app_flutter_biblioteca/app/modules/navigation/pages/navigation_page_view_builder.dart';
import 'package:app_flutter_biblioteca/app/modules/navigation/pages/navigation_stepper.dart';
import 'package:app_flutter_biblioteca/app/modules/navigation/pages/navigation_tab_bar.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:app_flutter_biblioteca/app/modules/navigation/navigation_page.dart';

class NavigationModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => NavigationController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => NavigationPage()),
        Router('/appbarbottom', child: (_, args) => NavigationAppBarBottom()),
        Router('/appbar', child: (_, args) => NavigationAppBar()),
        Router('/between', child: (_, args) => NavigationBetween()),
        Router('/bottomsheet', child: (_, args) => NavigationBottomSheet()),
        Router('/collapsible',
            child: (_, args) => NavigationCollapsibleToolbar()),
        Router('/drawer', child: (_, args) => NavigationDrawer()),
        Router('/expansiontile', child: (_, args) => NavigationExpansionTile()),
        Router('/listview', child: (_, args) => NavigationListViewBuilder()),
        Router('/pageview', child: (_, args) => NavigationPageViewBuilder()),
        Router('/stepper', child: (_, args) => NavigationStepper()),
        Router('/tabbar', child: (_, args) => NavigationTabBar()),
      ];

  static Inject get to => Inject<NavigationModule>.of();
}