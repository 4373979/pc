import 'package:flutter/material.dart';
import 'package:pc/pages/login/login_page.dart';
import 'package:pc/pages/register/register_page.dart';



Map<String, WidgetBuilder> routes() {
  return {
    '/login': (context) => const LoginPage(),
    '/register': (context) => const RegisterPage()
  };
}
