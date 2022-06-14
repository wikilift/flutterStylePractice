import 'package:flutter/cupertino.dart';

import '../model/menu_option.dart';
import '../screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    // MenuOption(
    //     route: 'home',
    //     icon: Icons.home_max_outlined,
    //     name: 'Home Screen',
    //     screen: const HomeScreen()),

    MenuOption(route: 'scrollscreen', icon: CupertinoIcons.home, name: 'Scroll Screen', screen: const ScrollScreen()),
    MenuOption(route: 'coolscreen', icon: CupertinoIcons.home, name: 'Cool Screen', screen: const CoolDesignScreen()),
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> routes = {};
    routes.addAll({"home": (BuildContext context) => const Show1Screen()});
    for (final item in menuOptions) {
      routes.addAll({item.route: (context) => item.screen});
    }
    return routes;
  }

  /* static Map<String, Widget Function(BuildContext)> routes = {
    'home': (context) => const HomeScreen(),
    'listview1': (context) => const ListView1Screen(),
    'listview2': (context) => const ListView2Screen(),
    'alert': (context) => const AlertScreen(),
    'card': (context) => const CardScreen(),
  };*/

  static Route<dynamic> onGenerateRoute(RouteSettings settings) => CupertinoPageRoute(
        builder: (context) => const Show1Screen(),
      );
}
