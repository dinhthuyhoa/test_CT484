import 'package:flutter/material.dart';

import '../screens/screen.dart';

class BaseRoute {
  static Map<String, Widget Function(BuildContext)> routes =
      <String, WidgetBuilder>{
    '/': (_) => const LoginScreen(),
    '/menu': (_) => const MenuScreen(),
    '/cart': (_) => const CartScreen(),
  };
}
