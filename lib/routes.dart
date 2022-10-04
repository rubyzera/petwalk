import 'package:flutter/material.dart';
import 'package:pet_walk/registerpet/registerpet.dart';
import 'package:pet_walk/register/register.dart';
import 'package:pet_walk/home/home.dart';
import 'package:pet_walk/mypets/mypets.dart';

class RouteGenerator {
  static const String register = '/register';
  static const String registerpet = '/registerpet';
  static const String home = '/home';
  static const String mypets = '/mypets';

  RouteGenerator._() {}

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case mypets:
        return MaterialPageRoute(
          builder: (_) => const MyPets(),
        );
      case home:
        return MaterialPageRoute(
          builder: (_) => Home(),
        );
      case register:
        return MaterialPageRoute(
          builder: (_) => const RegisterPage(),
        );
      case registerpet:
        return MaterialPageRoute(
          builder: (_) => const RegisterPet(),
        );
      default:
        throw FormatException("Rota não encontrada");
    }
  }
}