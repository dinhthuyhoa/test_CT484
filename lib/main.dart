import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'utils/utils.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: BaseTheme.themeData,
      initialRoute: '/',
      routes: BaseRoute.routes,
    );
  }
}

