import 'package:flutter/material.dart';
import 'package:pet_walk/registerpet/registerpet.dart';
import 'package:pet_walk/register/register.dart';

class RouteGenerator {
  static const String registerpet = '/register';
  static const String register = '/registerpet';

  RouteGenerator._() {}

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case registerpet:
        return MaterialPageRoute(
          builder: (_) => const RegisterPage(),
        );
      case register:
        return MaterialPageRoute(
          builder: (_) => const RegisterPet(),
        );
      default:
        throw FormatException("Rota não encontrada");
    }
  }
}