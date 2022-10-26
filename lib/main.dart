import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tarea5/views/acerca.dart';
import 'package:tarea5/views/contratame.dart';
import 'package:tarea5/views/enmivida.dart';
import 'package:tarea5/views/momentos.dart';
import 'package:tarea5/views/personajes.dart';
import 'package:tarea5/views/portada.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final GoRouter router = GoRouter(routes: <GoRoute>[
      GoRoute(
          path: '/',
          builder: (BuildContext context, GoRouterState state) =>
              const Portada()),
      GoRoute(
          path: '/personajes',
          builder: (BuildContext context, GoRouterState state) =>
              Personajes()),
      GoRoute(
          path: '/momentos',
          builder: (BuildContext context, GoRouterState state) =>
              const Momentos()),
      GoRoute(
          path: '/acercade',
          builder: (BuildContext context, GoRouterState state) =>
              const Acerca()),
      GoRoute(
          path: '/enmivida',
          builder: (BuildContext context, GoRouterState state) =>
              const Enmivida()),
      GoRoute(
          path: '/contratame',
          builder: (BuildContext context, GoRouterState state) =>
              const Contratame())
    ]);

    return MaterialApp.router(
      title: '',
      routerConfig: router,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
              backgroundColor: Color.fromARGB(175, 233, 7, 101)),
          textTheme: const TextTheme(
              headline1: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
          headline2: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14
          )
        )
      ),
    );
  }
}
