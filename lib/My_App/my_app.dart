import 'package:flutter/material.dart';

import '../View/Home_Page/login_page.dart';
import '../View/Home_Page/register_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      initialRoute: '/first',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/first': (context) => const LoginPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/second': (context) => const RegisterPage(),
      },
    );
  }
}
